import 'package:get/get.dart';
import 'package:getdemo/modules/weather/index.dart';
import 'package:getdemo/modules/home/index.dart';

class AppRoutes{
  static const home = "/home";
  static const weather = "/weather";

  final pages = [
    GetPage(name: home, page: ()=>HomePage()),
    GetPage(name: weather, page: ()=>WeatherPage())
  ];
}

class AppBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>HomeController());
    Get.lazyPut(()=>WeatherController());
  }
}