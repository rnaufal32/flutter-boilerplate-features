import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/core/app/app_widget.dart';
import 'package:flutter_boilerplate/core/services/init.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  servicesInit();
  runApp(AppWidget());
}
