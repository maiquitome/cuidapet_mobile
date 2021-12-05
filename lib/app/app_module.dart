import 'package:cuidapet/app/modules/core/core_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import './modules/auth/auth_module.dart';
import './modules/core/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind<Object>> binds = <Bind<Object>>[];

  @override
  List<Module> get imports => <Module>[
    CoreModule()
  ];

  @override
  final List<ModularRoute> routes = <ModularRoute>[
    ModuleRoute<dynamic>('/auth', module: AuthModule()),
    ModuleRoute<dynamic>('/home', module: HomeModule())
  ];
}
