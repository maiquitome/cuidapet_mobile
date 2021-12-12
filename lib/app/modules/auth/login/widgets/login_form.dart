import 'package:flutter/material.dart';

import '../../../../core/ui/extensions/screen_size_extension.dart';

class LoginForm extends StatefulWidget {
  const LoginForm(this.defaultPadding, {Key? key}) : super(key: key);

  final double defaultPadding;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextFormField(),
        TextFormField(),
        SizedBox(height: widget.defaultPadding * 2),
        SizedBox(
          width: double.infinity,
          height: 48.adaptHeight,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('ENTRAR'),
          ),
        ),
      ],
    );
  }
}
