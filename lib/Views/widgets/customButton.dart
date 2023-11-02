import 'package:e_commerce_login/Views/utils/color.dart';
import 'package:flutter/material.dart';

Widget customButton({required String buttonName, Color ? color}){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Container(
      height: 40,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(width: 2, color: buttonColor)
      ),
      child: Text(buttonName, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),),
    ),
  );
}
