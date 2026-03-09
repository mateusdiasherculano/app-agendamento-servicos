import 'package:agendamento_servico/modules/home/lib/src/domain/repository/home_repository.dart';
import 'package:agendamento_servico/modules/home/lib/src/external/appointment_response.dart';

import '../datasource/home_datasource.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeDatasource _datasource;

  HomeRepositoryImpl(this._datasource);

  @override
  Future<List<AppointmentResponse>> getAppointments() async {
    return await _datasource.getAppointments();
  }
}
