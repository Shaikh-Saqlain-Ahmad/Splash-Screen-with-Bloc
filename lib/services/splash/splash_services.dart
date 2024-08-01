import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash_screen_with_bloc/view/login_screen.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginScreen(),
            )));
  }
}
