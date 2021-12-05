import 'package:flutter_modular/flutter_modular.dart';

import './home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind<Object>> binds = <Bind<Object>>[];

  @override
  final List<ModularRoute> routes = <ModularRoute>[
    ChildRoute<dynamic>(
      Modular.initialRoute,
      child: (_, dynamic args) => const HomePage(),
    ),
  ];
}
