import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/core/component/my_dialog.dart';
import 'package:flutter_boilerplate/core/router/routes.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  final username = TextEditingController();
  final password = TextEditingController();

  void signinBtn() async {
    MyDialog.showLoading();
    await Future.delayed(Duration(seconds: 2));
    MyDialog.closeDialog();
    Get.offAndToNamed(Routes.home);
  }
}
