
import 'package:e_commerce_login/Views/auth/fogot/resetPassScreen.dart';
import 'package:e_commerce_login/Utils/colors.dart';
import 'package:e_commerce_login/Views/widgets/customBackButton.dart';
import 'package:e_commerce_login/Views/widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});
  final _formKey = GlobalKey<FormState>();

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
                height: double.infinity,
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 200,
                        width: 320,
                        child: Image.asset('assets/images/security.png'),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'OTP Verification',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Enter the verification code we just sent on your email address',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.5)),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                      Form(
                        key: _formKey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 80,
                              width: 50,
                              child: TextFormField(
                                validator: (code) {
                                  if (code!.isEmpty) {
                                    return 'Enter code';
                                  }
                                  return null;
                                },
                                maxLength: 1,
                                decoration:  InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: buttonColor,
                                        width: 2,
                                      )
                                  ),
                                  enabled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: buttonColor,
                                        width: 2,
                                      )
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: buttonColor,
                                        width: 2,
                                      )),
                                  counterText: '',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 80,
                              width: 50,
                              child: TextFormField(
                                validator: (code) {
                                  if (code!.isEmpty) {
                                    return 'Enter code';
                                  }
                                  return null;
                                },
                                maxLength: 1,
                                decoration:  InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: buttonColor,
                                        width: 2,
                                      )
                                  ),
                                  enabled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: buttonColor,
                                        width: 2,
                                      )
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: buttonColor,
                                        width: 2,
                                      )),
                                  counterText: '',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 80,
                              width: 50,
                              child: TextFormField(
                                validator: (code) {
                                  if (code!.isEmpty) {
                                    return 'Enter code';
                                  }
                                  return null;
                                },
                                maxLength: 1,
                                decoration:  InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: buttonColor,
                                        width: 2,
                                      )
                                  ),
                                  enabled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: buttonColor,
                                        width: 2,
                                      )
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: buttonColor,
                                        width: 2,
                                      )),
                                  counterText: '',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 80,
                              width: 50,
                              child: TextFormField(
                                validator: (code) {
                                  if (code!.isEmpty) {
                                    return 'Enter code';
                                  }
                                  return null;
                                },
                                maxLength: 1,
                                decoration:  InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: buttonColor,
                                        width: 2,
                                      )
                                  ),
                                  enabled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: buttonColor,
                                        width: 2,
                                      )
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: buttonColor,
                                        width: 2,
                                      )),
                                  counterText: '',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 80,
                              width: 50,
                              child: TextFormField(
                                validator: (code) {
                                  if (code!.isEmpty) {
                                    return 'Enter code';
                                  }
                                  return null;
                                },
                                maxLength: 1,
                                decoration:  InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: buttonColor,
                                        width: 2,
                                      )
                                  ),
                                  enabled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: buttonColor,
                                        width: 2,
                                      )
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: buttonColor,
                                        width: 2,
                                      )),
                                  counterText: ''),
                              ),
                            ),
                            SizedBox(
                              height: 80,
                              width: 50,
                              child: TextFormField(
                                validator: (code) {
                                  if (code!.isEmpty) {
                                    return 'Enter code';
                                  }
                                  return null;
                                },
                                maxLength: 1,
                                decoration:  InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: buttonColor,
                                        width: 2,
                                      )
                                  ),
                                  enabled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: buttonColor,
                                        width: 2,
                                      )
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: buttonColor,
                                        width: 2,
                                      )),
                                  counterText: '',
                                ),
                              ),
                            ),


                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      InkWell(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              Get.to(ResetPasswordScreen());
                            }
                          },
                          child: customButton(
                              buttonName: 'Submit', color: buttonColor)),
                      const SizedBox(
                        height: 25,
                      ),
                      RichText(
                        text: const TextSpan(
                            style: TextStyle(color: Colors.black, fontSize: 20),
                            children: [
                              TextSpan(text: "Don't have an account? "),
                              TextSpan(
                                text: ' Resend',
                                style: TextStyle(color: buttonColor),
                                // recognizer: TapGestureRecognizer()..onTap = () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterScreen(),)),
                              ),
                            ]
                        ),
                      )
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
