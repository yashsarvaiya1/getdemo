import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getdemo/core/app.dart';
import 'package:getdemo/modules/dashboard/index.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  final DashboardController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    ColorScheme cs = Get.theme.colorScheme;
    return Scaffold(
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: controller.currnetIndex.value,
          type: BottomNavigationBarType.fixed,
          onTap:
              (value) => {controller.currnetIndex.value = value, print(value)},
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          ],
        );
      }),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.deepPurple, width: 2),
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(border: Border.all()),
                    child: Center(
                      child: Text(
                        "D A S H B O A R D",
                        style: TextStyle(fontSize: 30, color: cs.secondary),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                          childAspectRatio: 2.0,
                        ),
                        itemCount: AppRoutes.pages.length,
                        itemBuilder: (context, item) {
                          final page = AppRoutes.pages[item];
                          final path = page.name;
                          return GestureDetector(
                            onTap: () {
                              Get.toNamed(path);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: cs.onSecondary,
                                border: Border.all(color: cs.primary),
                              ),
                              child: Center(
                                child: Text(
                                  path,
                                  style: TextStyle(color: cs.secondary),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
