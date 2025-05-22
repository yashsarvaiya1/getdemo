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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.defaultDialog(
            title: "Store your username",
            content: Column(
              children: [
                TextField(
                  controller: controller.textController,
                  decoration: InputDecoration(
                    label: Text("enter your username"),
                  ),
                ),
              ],
            ),
            textConfirm: "Confirm!",
            textCancel: "Cancel",
            onConfirm: () => {controller.addData(), Get.back()},
          );
        },
        child: Text("+"),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() {
                return Text(controller.username.value);
              }),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: TextButton(
                  onPressed: () => Get.toNamed(AppRoutes.weather),
                  child: Text("Go to Weather Page"),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: TextButton(
                  onPressed: () => controller.removeData(),
                  child: Text("Remove Storage Data"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
