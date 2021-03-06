import 'package:flutter_modular/flutter_modular.dart';

import './home/auth_home_page.dart';
import './login/login_module.dart';

class AuthModule extends Module {
  @override
  final List<Bind<Object>> binds = <Bind<Object>>[];

  @override
  final List<ModularRoute> routes = <ModularRoute>[
    ChildRoute<dynamic>(
      Modular.initialRoute,
      child: (_, dynamic args) => AuthHomePage(authStore: Modular.get()),
    ),
    ModuleRoute<dynamic>('/login', module: LoginModule()),
  ];
}
