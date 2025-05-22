import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getdemo/modules/home/index.dart';

class HomeController extends GetxController {
  var username = "".obs;
  var change = "yash".obs;
  final UserStorageService storage = Get.find();
  final textController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    username.value = storage.getData();
  }

  void addData() {
    storage.addData(textController.text);
    username.value = textController.text;
    change.value = textController.text;
    textController.clear();
  }

  void removeData() {
    storage.removeData("username");
    username.value = "No username Found";
  }
}
