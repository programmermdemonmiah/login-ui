import 'package:e_commerce_login/Utils/colors.dart';
import 'package:e_commerce_login/Views/GetStarted_Screens/get_started_screen.dart';
import 'package:e_commerce_login/Views/widgets/customBackButton.dart';
import 'package:e_commerce_login/Views/widgets/customButton.dart';
import 'package:e_commerce_login/controllers/password_state_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
   ResetPasswordScreen({super.key});
    final _formKey = GlobalKey<FormState>();
    final passController = Get.put(PasswordStateController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(child: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.only(left: 8, top: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customBackButton(context: context),
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      const SizedBox(height: 30,),
                      Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Create new password',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Your new password must be unique from those previously used.',
                              style:
                              TextStyle(color: Colors.black.withOpacity(0.5)),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const Text(
                              'Create New Password',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Obx(() => TextFormField(
                              validator: (password) {
                                if (password!.isEmpty) {
                                  return 'Enter your new password';
                                }
                                return null;
                              },
                              obscureText: passController.isSecure.value,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.lock),
                                suffixIcon: IconButton(onPressed: (){passController.showPassword();}, icon: passController.isSecure.value?const Icon(Icons.visibility): const Icon(Icons.visibility_off)),
                                contentPadding: const EdgeInsets.all(15),
                                hintMaxLines: 3,
                                hintText: 'Enter your new password',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: const BorderSide(
                                      color: buttonColor,
                                      width: 2,
                                    )
                                ),
                                enabled: true,
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: const BorderSide(
                                      color: buttonColor,
                                      width: 2,
                                    )
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: const BorderSide(
                                      color: buttonColor,
                                      width: 2,
                                    )),
                              ),
                            )),
                            const SizedBox(height: 15,),
                            const Text(
                              'Re-type Password',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Obx(() => TextFormField(
                              validator: (password) {
                                if (password!.isEmpty) {
                                  return 'Re-type your new password';
                                }
                                return null;
                              },
                              obscureText: passController.isSecure.value,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.lock),
                                suffixIcon: IconButton(onPressed: (){passController.showPassword();}, icon: passController.isSecure.value?const Icon(Icons.visibility): const Icon(Icons.visibility_off)),
                                contentPadding: const EdgeInsets.all(15),
                                hintMaxLines: 3,
                                hintText: 'Re-type your new password',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: const BorderSide(
                                      color: buttonColor,
                                      width: 2,
                                    )
                                ),
                                enabled: true,
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: const BorderSide(
                                      color: buttonColor,
                                      width: 2,
                                    )
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: const BorderSide(
                                      color: buttonColor,
                                      width: 2,
                                    )),
                              ),
                            )),
                          ],
                        ),
                      ),
                      const SizedBox(height: 60,),
                      InkWell(onTap: () {
                        if (_formKey.currentState!.validate()) {
                         Get.to(const GetStartedScreen());
                        }
                      }, child: customButton(buttonName: 'Reset password',
                          color: buttonColor)),
                      const SizedBox(height: 15,)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
