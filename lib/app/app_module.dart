import 'package:flutter_modular/flutter_modular.dart';

import './modules/auth/auth_module.dart';

class AppModule extends Module {
  @override
  final List<Bind<Object>> binds = <Bind<Object>>[];

  @override
  final List<ModularRoute> routes = <ModularRoute>[
    ModuleRoute<dynamic>('/auth', module: AuthModule())
  ];
}
