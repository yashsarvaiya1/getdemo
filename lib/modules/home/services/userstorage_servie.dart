import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class UserStorageService extends GetxService {
  final storage = GetStorage();

  String getData() {
    return storage.read("username") ?? "No username found";
  }

  void addData(String value) {
    storage.write("username", value);
  }

  void removeData(String key) {
    storage.remove(key);
  }
}
