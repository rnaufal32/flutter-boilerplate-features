import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/features/signin/controller/signin_controller.dart';
import 'package:get/get.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SignInController>(
        builder: (_) => SignInBody(),
      ),
    );
  }
}

class SignInBody extends GetWidget<SignInController> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        shrinkWrap: true,
        children: [
          TextFormField(
            controller: controller.username,
            decoration: InputDecoration(
              labelText: 'Username',
            ),
          ),
          TextFormField(
            controller: controller.password,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),
          SizedBox(height: 90),
          ElevatedButton(
            onPressed: controller.signinBtn,
            child: Text('SIGN IN'),
          ),
        ],
      ),
    );
  }
}
