import 'package:flutter_modular/flutter_modular.dart';

import './login_page.dart';

class LoginModule extends Module {
  @override
  final List<Bind<Object>> binds = <Bind<Object>>[];

  @override
  final List<ModularRoute> routes = <ModularRoute>[
    ChildRoute<dynamic>(
      Modular.initialRoute,
      child: (_, dynamic args) => const LoginPage(),
    ),
  ];
}
