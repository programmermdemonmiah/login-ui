import 'package:e_commerce_login/Views/otpScreen.dart';
import 'package:e_commerce_login/Views/utils/color.dart';
import 'package:e_commerce_login/Views/widgets/customBackButton.dart';
import 'package:e_commerce_login/Views/widgets/customButton.dart';
import 'package:flutter/material.dart';

class ForgotScreen extends StatelessWidget {
   ForgotScreen({super.key});
final _formKey = GlobalKey<FormState>();
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
                    Container(
                      alignment: Alignment.center,
                      height: 200,
                      width: 320,
                      child: Image.asset('assets/images/forgot.png'),
                    ),
                    const SizedBox(height: 30,),
                    Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Forgot password?',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Don’t worry! it occurs. Please enter the email address linked with your account.',
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
                          TextFormField(
                            validator: (email) {
                              if (email!.isEmpty) {
                                return 'Enter your email';
                              }
                              else{
                              }
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              contentPadding: EdgeInsets.all(15),
                              hintMaxLines: 3,
                              hintText: 'Enter your email',
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
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 60,),
                    InkWell(onTap: () {
                      if(_formKey.currentState!.validate()){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => OtpScreen(),));
                      }
                    }, child: customButton(buttonName: 'Send Code', color: buttonColor)),
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
