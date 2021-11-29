import 'package:cuidapet/app/modules/auth/home/auth_home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends Module {
  @override
  final List<Bind<Object>> binds = <Bind<Object>>[];

  @override
  final List<ModularRoute> routes = <ModularRoute>[
    ChildRoute<dynamic>(
      Modular.initialRoute,
      child: (_, dynamic args) => const AuthHomePage(),
    ),
  ];
}
