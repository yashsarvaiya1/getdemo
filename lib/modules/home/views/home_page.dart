import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getdemo/core/app.dart';
import 'package:getdemo/modules/home/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Get.toNamed(AppRoutes.weather),
              child: Text("Go to Weather Page"),
            ),
          ],
        ),
      ),
    );
  }
}
