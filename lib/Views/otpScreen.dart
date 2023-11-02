import 'package:e_commerce_login/Views/resetPassScreen.dart';
import 'package:e_commerce_login/Views/utils/color.dart';
import 'package:e_commerce_login/Views/widgets/customBackButton.dart';
import 'package:e_commerce_login/Views/widgets/customButton.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});
 String ? codeError;
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
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(width: 2, color: buttonColor)),
                              child: TextFormField(
                                validator: (code) {
                                  if (code!.isEmpty) {
                                    return codeError = code;
                                  }
                                },
                                maxLength: 1,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  border: InputBorder.none,
                                  counterText: '',
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(width: 2, color: buttonColor)),
                              child: TextFormField(
                                validator: (code) {
                                  if (code!.isEmpty) {
                                    return codeError = code;
                                  }
                                },
                                maxLength: 1,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  border: InputBorder.none,
                                  counterText: '',
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(width: 2, color: buttonColor)),
                              child: TextFormField(
                                validator: (code) {
                                  if (code!.isEmpty) {
                                    return codeError = code;
                                  }
                                },
                                maxLength: 1,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  border: InputBorder.none,
                                  counterText: '',
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(width: 2, color: buttonColor)),
                              child: TextFormField(
                                validator: (code) {
                                  if (code!.isEmpty) {
                                    return codeError = code;
                                  }
                                },
                                maxLength: 1,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  border: InputBorder.none,
                                  counterText: '',
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(width: 2, color: buttonColor)),
                              child: TextFormField(
                                validator: (code) {
                                  if (code!.isEmpty) {
                                    return codeError = code;
                                  }
                                },
                                maxLength: 1,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  border: InputBorder.none,
                                  counterText: '',
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(width: 2, color: buttonColor)),
                              child: TextFormField(
                                validator: (code) {
                                  if (code!.isEmpty) {
                                    return codeError = code;
                                  }
                                },
                                maxLength: 1,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  border: InputBorder.none,
                                  counterText: '',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      codeError == null ? SizedBox() : Text('Enter your valid code'),
                      const SizedBox(
                        height: 60,
                      ),
                      InkWell(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResetPasswordScreen(),));
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