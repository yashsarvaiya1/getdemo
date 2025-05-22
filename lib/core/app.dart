import 'package:get/get.dart';
import 'package:getdemo/modules/dashboard/index.dart';
import 'package:getdemo/modules/random_dog/index.dart';
import 'package:getdemo/modules/weather/index.dart';
import 'package:getdemo/modules/home/index.dart';

class AppRoutes {
  static const home = "/home";
  static const weather = "/weather";
  static const dashboard = "/dashboard";
  static const dog = "/dog";

  static final pages = [
    GetPage(name: home, page: () => HomePage()),
    GetPage(name: weather, page: () => WeatherPage()),
    GetPage(name: dashboard, page: () => DashboardPage()),
    GetPage(name: dog, page: () => DogPage()),
  ];
}

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DogApiService(), fenix: true);
    Get.lazyPut(() => DogController(), fenix: true);
    Get.lazyPut(() => UserStorageService(), fenix: true);
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => WeatherController(), fenix: true);
    Get.lazyPut(() => DashboardController(), fenix: true);
  }
}
