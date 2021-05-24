import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDialog {
  static void showLoading() {
    Get.dialog(Center(
      child: CircularProgressIndicator(),
    ));
  }

  static void closeDialog() {
    if (Get.isDialogOpen!) {
      Get.back();
    }
  }

  static void showMessage({
    required String message,
    String? title,
    List<Widget>? actions,
  }) {
    Get.dialog(AlertDialog(
      title: Text(title ?? 'App Name'),
      content: Text(message),
      actions: actions ??
          [
            TextButton(
              onPressed: closeDialog,
              child: Text('OK'),
            )
          ],
    ));
  }
}
