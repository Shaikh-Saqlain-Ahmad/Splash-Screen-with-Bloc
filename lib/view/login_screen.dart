import 'package:flutter/material.dart';
import 'package:splash_screen_with_bloc/model/user/user_model.dart';
import 'package:splash_screen_with_bloc/view/login/widget/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  UserModel userModel = UserModel();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            EmailInputWidget(emailFocusNode: emailFocusNode),
            const SizedBox(
              height: 20,
            ),
            PasswordInputWidget(passwordFocusNode: passwordFocusNode),
            const SizedBox(
              height: 20,
            ),
            LoginButton(formKey: _formKey)
          ],
        ),
      ),
    );
  }
}
