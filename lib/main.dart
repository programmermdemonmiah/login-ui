import 'package:e_commerce_login/All_Binding/all_binding.dart';
import 'package:e_commerce_login/Views/Splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  AllBinding().dependencies();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(

      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
