import 'package:flutter/material.dart';

import 'package:asuka/asuka.dart' as asuka;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: () => MaterialApp(
        initialRoute: '/auth/',
        builder: asuka.builder,
        navigatorObservers: <NavigatorObserver>[asuka.asukaHeroController],
      ).modular(),
    );
  }
}
