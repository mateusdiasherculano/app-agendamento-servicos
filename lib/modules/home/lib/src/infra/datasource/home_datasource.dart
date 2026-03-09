import 'package:agendamento_servico/modules/home/lib/src/external/appointment_response.dart';

abstract class HomeDatasource {
  Future<List<AppointmentResponse>> getAppointments();
}
