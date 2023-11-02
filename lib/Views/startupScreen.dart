import 'package:e_commerce_login/Views/loginScreen.dart';
import 'package:e_commerce_login/Views/registerScreen.dart';
import 'package:e_commerce_login/Views/utils/color.dart';
import 'package:e_commerce_login/Views/widgets/customButton.dart';
import 'package:flutter/material.dart';

class StartUpScreen extends StatelessWidget {
  const StartUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.center,
                    height: 250,
                    width: 300,
                    child: Image.asset('assets/images/startup.png', fit: BoxFit.cover,),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 45,
                        width: 130,
                        child: const Image(image: AssetImage('assets/images/priyoshop.png'), fit: BoxFit.cover,),
                      ),
                      const SizedBox(height: 8,),
                      const Text('Everything you need is one place',style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),),
                      const SizedBox(height: 5,),
                      Text('Find your daily necessities at Brand. The world’s largest fashion e-Commerce has arrived in a mobile, shop now', style: TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 17),),
                    ],
                  ),
                  const SizedBox(height: 50,),
                  InkWell(onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen(),));
                  }, child: customButton(buttonName: 'Login', color: buttonColor)),
                  const SizedBox(height: 25,),
                  InkWell(onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterScreen(),));
                  }, child: customButton(buttonName: 'Register',)),
                  const SizedBox(height: 20,),
                ],
              ),
            ),
          ),
      ),
    );
  }
}
