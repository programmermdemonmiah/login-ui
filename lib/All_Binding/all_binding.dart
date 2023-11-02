import 'package:e_commerce_login/controllers/password_state_controller.dart';
import 'package:get/get.dart';

class AllBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => PasswordStateController());
  }

}