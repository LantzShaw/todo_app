import 'package:get/get.dart';
import 'package:todo_app/controllers/cart_controller.dart';

class CartBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartController());
  }
}
