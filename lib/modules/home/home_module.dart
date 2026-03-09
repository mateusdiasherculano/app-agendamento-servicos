import 'package:agendamento_servico/modules/home/lib/src/domain/repository/home_repository.dart';
import 'package:agendamento_servico/modules/home/lib/src/external/datasource/home_datasource_impl.dart';
import 'package:agendamento_servico/modules/home/lib/src/infra/repository/home_repository_impl.dart';
import 'package:agendamento_servico/modules/home/lib/src/presenter/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'lib/src/domain/usecase/home_usecase.dart';
import 'lib/src/infra/datasource/home_datasource.dart';
import 'lib/src/presenter/home_page.dart';
import 'lib/src/presenter/home_store.dart';

class HomeModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton(HomeController.new);
    i.addLazySingleton(HomeStore.new);
    i.addLazySingleton(HomeUsecase.new);
    i.addLazySingleton<HomeRepository>(HomeRepositoryImpl.new);
    i.addLazySingleton<HomeDatasource>(HomeDatasourceImpl.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => HomePage());
  }
}
