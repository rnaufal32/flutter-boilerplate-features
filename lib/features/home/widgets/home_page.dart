import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/features/home/controller/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) => HomeBody(),
      ),
    );
  }
}

class HomeBody extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('HOME'),
    );
  }
}
