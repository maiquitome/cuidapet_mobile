import 'package:flutter/material.dart';

import '../../../core/ui/extensions/screen_size_extension.dart';
import '../../../core/ui/extensions/theme_extension.dart';

import 'widgets/widgets.dart';

double defaultPadding = 16.0.adaptHeight;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: defaultPadding, right: defaultPadding),
        child: Center(
          child: SingleChildScrollView(
            child: SizedBox(
              height: 1.screenHeight,
              width: 1.screenWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/logo.png',
                    height: 130.adaptHeight,
                    width: 162.adaptHeight,
                    fit: BoxFit.fill,
                  ),
                  LoginForm(defaultPadding),
                  _separator(context),
                  LoginRegisterButtons(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _separator(BuildContext context) {
  return Row(
    children: <Widget>[
      _line(context),
      Padding(
        padding: EdgeInsets.all(defaultPadding * 1.4),
        child: Text(
          'ou',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.adaptFontSize,
            color: context.primaryColor,
            height: 1,
          ),
        ),
      ),
      _line(context),
    ],
  );
}

Widget _line(BuildContext context) {
  return Expanded(
    child: Divider(
      color: context.primaryColor,
      thickness: 1,
    ),
  );
}
