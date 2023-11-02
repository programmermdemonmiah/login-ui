import 'package:e_commerce_login/Views/utils/color.dart';
import 'package:e_commerce_login/Views/widgets/customBackButton.dart';
import 'package:e_commerce_login/Views/widgets/customButton.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
   RegisterScreen({super.key});
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
            const SizedBox( height: 10,),
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
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
                              'Register',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Enter your personal Information',
                              style:
                              TextStyle(color: Colors.black.withOpacity(0.5)),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const Text(
                              'Username',
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
                                  if (email == null) {
                                    return 'create username ';
                                  }
                                },
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.person),
                                  contentPadding: EdgeInsets.all(15),
                                  hintMaxLines: 3,
                                  hintText: 'username',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
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
                                  if (email == null) {
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
                                obscureText: true,
                                validator: (password) {
                                  if (password == null) {
                                    return 'Enter your password';
                                  }
                                },
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
                              height: 10,
                            ),
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
                                  if (password == null) {
                                    return 'Re-type your password';
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
                          ],
                        ),
                      ),

                      //button===========
                      const SizedBox(
                        height: 30,
                      ),
                      customButton(buttonName: 'Register', color: buttonColor),
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
