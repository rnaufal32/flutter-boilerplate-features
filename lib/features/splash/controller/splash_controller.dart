import 'package:flutter_boilerplate/core/router/routes.dart';
import 'package:flutter_boilerplate/features/auth/controller/auth_controller.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final AuthController authController = Get.find();

  void isUserEmpty() {
    final empty = authController.getUser();
    if (empty) {
      Get.offAllNamed(Routes.signin);
    } else {
      Get.offAllNamed(Routes.home);
    }
  }

  @override
  void onInit() {
    super.onInit();
    isUserEmpty();
  }
}
