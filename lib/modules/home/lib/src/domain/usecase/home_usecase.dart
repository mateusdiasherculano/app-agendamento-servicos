import 'package:agendamento_servico/modules/home/lib/src/external/appointment_response.dart';

import '../repository/home_repository.dart';

abstract class IExecute {
  Future<List<AppointmentResponse>> call();
}

class HomeUsecase implements IExecute {
  final HomeRepository _repository;

  HomeUsecase(this._repository);

  @override
  Future<List<AppointmentResponse>> call() async {
    return await _repository.getAppointments();
  }
}
