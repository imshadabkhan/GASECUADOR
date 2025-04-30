import 'package:get/get.dart';

class CancelOrderController extends GetxController {
  RxList<RxBool> checkBoxValue = List.generate(4, (index)=>false.obs).obs;

  void toggleCheckBoxValue(int index) {
    checkBoxValue[index].value = !checkBoxValue[index].value;
  }
}
