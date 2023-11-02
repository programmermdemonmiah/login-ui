import 'dart:async';
import 'package:get/get.dart';
import 'package:e_commerce_login/Views/GetStarted_Screens/get_started_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {Get.to(const GetStartedScreen());});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset('assets/images/shop_logo.png')),
    );
  }
}
