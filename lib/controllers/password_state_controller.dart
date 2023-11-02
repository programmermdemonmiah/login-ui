import 'package:get/get.dart';

class PasswordStateController extends GetxController{
  var isSecure = true.obs;

  void showPassword(){
    isSecure.value = !isSecure.value;
  }

}