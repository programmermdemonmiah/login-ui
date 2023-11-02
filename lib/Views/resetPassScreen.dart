import 'package:e_commerce_login/Views/startupScreen.dart';
import 'package:e_commerce_login/Views/utils/color.dart';
import 'package:e_commerce_login/Views/widgets/customBackButton.dart';
import 'package:e_commerce_login/Views/widgets/customButton.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
   ResetPasswordScreen({super.key});
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
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border:
                                  Border.all(width: 2, color: buttonColor)),
                              child: TextFormField(
                                validator: (password) {
                                  if (password!.isEmpty) {
                                    return 'Enter your new password';
                                  }
                                  else {}
                                },
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.lock),
                                  suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_rounded)),
                                  contentPadding: EdgeInsets.all(15),
                                  hintMaxLines: 3,
                                  hintText: 'Enter your new password',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
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
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border:
                                  Border.all(width: 2, color: buttonColor)),
                              child: TextFormField(
                                validator: (password) {
                                  if (password!.isEmpty) {
                                    return 'Re-type your new password';
                                  }
                                  else {}
                                },
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.lock),
                                  suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_rounded)),
                                  contentPadding: EdgeInsets.all(15),
                                  hintMaxLines: 3,
                                  hintText: 'Re-type your new password',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 60,),
                      InkWell(onTap: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => StartUpScreen(),));
                        }
                      }, child: customButton(buttonName: 'Send Code',
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
