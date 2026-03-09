import 'package:flutter_modular/flutter_modular.dart';

import 'home_store.dart';

class HomeController extends Disposable {
  final HomeStore store;

  HomeController(this.store);

  Future<void> getAppointments() async {
    store.getAppointments();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
