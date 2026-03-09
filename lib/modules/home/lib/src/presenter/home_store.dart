import 'package:agendamento_servico/modules/home/lib/src/domain/usecase/home_usecase.dart';
import 'package:flutter_triple/flutter_triple.dart';

import '../external/appointment_response.dart';

class HomeStore extends Store<List<AppointmentResponse>> {
  final HomeUsecase _execute;

  HomeStore(this._execute) : super(<AppointmentResponse>[]);

  Future<void> getAppointments() async {
    return execute(() => _execute());
  }
}
