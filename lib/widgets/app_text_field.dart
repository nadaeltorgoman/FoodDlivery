import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final IconData icon;
  bool isObscure;
  AppTextField(
      {super.key,
      required this.textController,
      required this.hintText,
      required this.icon,
      this.isObscure = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: Dimensions.height20, right: Dimensions.height20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Dimensions.radius15),
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            spreadRadius: 1,
            offset: const Offset(1, 1),
            color: Colors.grey.withOpacity(0.2),
          )
        ],
      ),
      child: TextField(
        obscureText: isObscure,
        controller: textController,
        decoration: InputDecoration(
          //hintText
          hintText: hintText,
          //prefix
          prefixIcon: Icon(icon, color: AppColors.yellowColor),
          //focusedBorder
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius15),
            borderSide: const BorderSide(width: 1.0, color: Colors.white),
          ),
          //enabledBorder
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius15),
            borderSide: const BorderSide(width: 1.0, color: Colors.white),
          ),
          //border
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius15),
            borderSide: const BorderSide(width: 1.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
