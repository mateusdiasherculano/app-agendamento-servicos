import 'package:agendamento_servico/modules/home/lib/src/external/appointment_response.dart';
import 'package:agendamento_servico/modules/home/lib/src/infra/datasource/home_datasource.dart';
import 'package:dio/dio.dart';

class HomeDatasourceImpl implements HomeDatasource {
  @override
  Future<List<AppointmentResponse>> getAppointments() async {
    final dio = Dio();

    try {
      final response = await dio.get('http://10.0.2.2:8080/api/appointments');

      final List data = response.data;

      return data.map((json) => AppointmentResponse.fromJson(json)).toList();
    } on DioException catch (e) {
      throw Exception('Erro ao buscar agendamentos: ${e.message}');
    }
  }
}
