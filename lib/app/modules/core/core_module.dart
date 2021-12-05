import 'package:cuidapet/app/modules/core/auth/auth_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CoreModule extends Module {
  @override
  final List<Bind<Object>> binds = <Bind<Object>>[
    Bind.lazySingleton((dynamic i) => AuthStore(), export: true),
  ];
}
