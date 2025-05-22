import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getdemo/core/app.dart';
import 'package:getdemo/modules/dashboard/index.dart';
import 'package:getdemo/modules/home/index.dart';

class WeatherPage extends StatelessWidget {
  WeatherPage({super.key});
  final HomeController homeController = Get.find();
  final DashboardController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Get.offAllNamed(AppRoutes.dashboard),
              child: Text(
                "Go Back also just checking this : ${homeController.change.value}",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
