import 'package:flutter_boilerplate/core/http/api_provider.dart';
import 'package:flutter_boilerplate/core/services/hive_service.dart';
import 'package:flutter_boilerplate/features/auth/controller/auth_controller.dart';
import 'package:get/get.dart';

void servicesInit() {
  Get.put(HiveService.serviceInit());
  Get.put(ApiProvider());
  Get.put(AuthController());
}
