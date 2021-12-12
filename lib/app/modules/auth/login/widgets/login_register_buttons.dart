import 'package:flutter/material.dart';

class LoginRegisterButtons extends StatelessWidget {
  const LoginRegisterButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 16,
      runSpacing: 16,
      children: <Widget>[
        Container(
          width: 163,
          height: 41,
          color: Colors.blue,
        ),
        Container(
          width: 163,
          height: 41,
          color: Colors.green,
        ),
        Container(
          width: 163,
          height: 41,
          color: Colors.orange,
        ),
      ],
    );
  }
}
