import 'package:e_commerce_login/Views/forgotScreen.dart';
import 'package:e_commerce_login/Views/registerScreen.dart';
import 'package:e_commerce_login/Views/utils/color.dart';
import 'package:e_commerce_login/Views/widgets/customBackButton.dart';
import 'package:e_commerce_login/Views/widgets/customButton.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _formKey = GlobalKey<FormState>();
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.only(left: 8, top: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customBackButton(context: context),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 45,
                        width: 130,
                        alignment: Alignment.center,
                        child: Image.asset('assets/images/priyoshop.png'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Login to continue using the app',
                              style:
                                  TextStyle(color: Colors.black.withOpacity(0.5)),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const Text(
                              'Email',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border:
                                      Border.all(width: 2, color: buttonColor)),
                              child: TextFormField(
                                validator: (email) {
                                  if (email!.isEmpty) {
                                    return 'Enter your email';
                                  }
                                },
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.person),
                                  contentPadding: EdgeInsets.all(15),
                                  hintMaxLines: 3,
                                  hintText: 'Enter your email',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Password',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border:
                                      Border.all(width: 2, color: buttonColor)),
                              child: TextFormField(
                                validator: (password) {
                                  if (password!.isEmpty) {
                                    return 'Enter your password';
                                  }
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.lock),
                                  suffixIcon: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.remove_red_eye_rounded)),
                                  contentPadding: const EdgeInsets.all(15),
                                  hintMaxLines: 3,
                                  hintText: 'Enter your password',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              child: Tooltip(
                                message: 'Forgot your password',
                                child: InkWell(
                                    onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgotScreen(),));},
                                    child: const Text('Forgot password?')),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      InkWell(onTap: () {
                        if(_formKey.currentState!.validate()){

                        }
                      }, child: customButton(buttonName: 'Login', color: buttonColor)),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Divider(
                            color: Colors.black,
                            indent: 8,
                            endIndent: 8,
                            thickness: 1.2,
                          )),
                          Text(
                            'or login with',
                            style: TextStyle(fontSize: 21, color: Colors.black),
                          ),
                          Expanded(
                              child: Divider(
                            color: Colors.black,
                            indent: 8,
                            endIndent: 8,
                            thickness: 1.2,
                          )),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 40,
                              width: 45,
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 2, color: buttonColor),
                              ),
                              child: Image.asset(
                                'assets/images/facebook.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 40,
                              width: 45,
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 2, color: buttonColor),
                              ),
                              child: Image.asset(
                                'assets/images/google.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 40,
                              width: 45,
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 2, color: buttonColor),
                              ),
                              child: Image.asset(
                                'assets/images/apple.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      RichText(
                          text: TextSpan(
                            style: const TextStyle(color: Colors.black, fontSize: 20),
                              children: [
                        const TextSpan(text: "Don't have an account? "),
                        TextSpan(
                            text: ' Register',
                            style: const TextStyle(color: buttonColor),
                            recognizer: TapGestureRecognizer()..onTap = () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterScreen(),)),
                        ),
                              ]
                          ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}