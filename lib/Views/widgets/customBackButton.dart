import 'package:e_commerce_login/Utils/color.dart';
import 'package:flutter/material.dart';

Widget customBackButton({required BuildContext context}){
  return InkWell(
    onTap: () {
      Navigator.of(context).pop();
    },
    child: Container(
      padding: const EdgeInsets.all(2),
      alignment: Alignment.center,
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2, color: buttonColor),
      ),
      child:const Icon(Icons.arrow_back_ios_new),
    ),
  );
}