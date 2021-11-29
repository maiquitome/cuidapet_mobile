import 'package:flutter/material.dart';

import '../../../core/ui/extensions/screen_size_extension.dart';

class AuthHomePage extends StatefulWidget {
  const AuthHomePage({Key? key}) : super(key: key);

  @override
  _AuthHomePageState createState() => _AuthHomePageState();
}

class _AuthHomePageState extends State<AuthHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          width: 162.adaptWidth,
          height: 130.adaptHeight,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
