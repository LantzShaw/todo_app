import 'package:get/get.dart';
import 'package:todo_app/models/cart.dart';

class CartController extends GetxController {
  Map<int, Cart> _items = {};

  Map<int, Cart> get items {
    return {..._items};
  }

  var  name = 'hello'.obs;

  // final title = 'Login';

  // @override
  // void onInit() {
  //   print('Arguments: ${Get.arguments}');
  //   super.onInit();
  // }


  //  @override
  // void onClose() {
  //   // TODO: implement onClose
  //   super.onClose();

  //   /// 添加缓存
  //   ProjectCloudSearchCache.setProjectCloudSearchList(searchRecords);
  // }
}