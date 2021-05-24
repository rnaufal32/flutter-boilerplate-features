import 'package:flutter_boilerplate/core/constant/box.dart';
import 'package:flutter_boilerplate/features/auth/domain/entities/user_model.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class AuthController extends GetxController {
  Rx<UserModel> user = UserModel(name: '').obs;
  final authBox = Hive.box(ConstHiveBox.auth);

  void setUser(UserModel userModel) {
    user.value = userModel;
    authBox.put('user', userModel.toString());
  }

  bool getUser() {
    return authBox.isEmpty;
  }
}
