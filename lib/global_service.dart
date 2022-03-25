import 'package:get/get.dart';
import 'package:todo_app/theme.dart';

class GlobalService extends GetxService {
  Future<GlobalService> init() async {
    return this;
  }

  static GlobalService get to => Get.find();

  final _isDarkMode = Get.isDarkMode.obs;
  get isDarkMode => _isDarkMode.value;
  set isDarkMode(value) => _isDarkMode.value = value;

  void switchThemeMode() {
    _isDarkMode.value = !_isDarkMode.value;

    Get.changeTheme(_isDarkMode.value == true ? AppTheme.dark : AppTheme.light);
  }
}
