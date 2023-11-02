import 'package:e_commerce_login/Utils/colors.dart';
import 'package:e_commerce_login/Views/auth/login/loginScreen.dart';
import 'package:e_commerce_login/Views/auth/Register/registerScreen.dart';
import 'package:e_commerce_login/Views/widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        height: 250,
                        width: 300,
                        child: Image.asset('assets/images/shop_logo.png', fit: BoxFit.cover,),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 45,
                      width: 130,
                      child: const Image(image: AssetImage('assets/images/logo.png'), fit: BoxFit.cover,),
                    ),
                    const SizedBox(height: 8,),
                    const Text('Everything you need is one place',style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),),
                    const SizedBox(height: 5,),
                    Text('Find your daily necessities at Brand. The world’s largest fashion e-Commerce has arrived in a mobile, shop now', style: TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 17),),
                    const SizedBox(height: 50,),
                  ],
                ),
                Column(
                  children: [
                    InkWell(onTap: () {
                      Get.to(LoginScreen());
                    }, child: customButton(buttonName: 'Login', color: buttonColor)),
                    const SizedBox(height: 20,),
                    InkWell(onTap: () {
                      Get.to( RegisterScreen());
                    }, child: customButton(buttonName: 'Register',)),
                    const SizedBox(height: 15,),
                  ],
                )
              ],
            ),
          ),
      ),
    );
  }
}
