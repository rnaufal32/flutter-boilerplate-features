import 'package:flutter_boilerplate/core/constant/box.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveService {
  static void init() {
    Hive.initFlutter();
  }

  static void serviceInit() async {
    await Hive.openBox(ConstHiveBox.auth);
  }
}
