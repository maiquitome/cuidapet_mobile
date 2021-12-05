import 'package:cuidapet/app/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../core/auth/auth_store.dart';
import '../../../core/ui/extensions/screen_size_extension.dart';

class AuthHomePage extends StatefulWidget {
  const AuthHomePage({Key? key, required AuthStore authStore})
      : _authStore = authStore,
        super(key: key);

  final AuthStore _authStore;

  @override
  _AuthHomePageState createState() => _AuthHomePageState();
}

class _AuthHomePageState extends State<AuthHomePage> {
  @override
  void initState() {
    super.initState();

    reaction<UserModel?>(
      (_) => widget._authStore.userModel,
      (UserModel? userModel) {
        if (userModel != null && userModel.email.isNotEmpty) {
          Navigator.pushReplacementNamed(context, '/home');
        } else {
          Navigator.pushReplacementNamed(context, '/auth/login');
        }
      },
    );

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      widget._authStore.loadUser();
    });
  }

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
