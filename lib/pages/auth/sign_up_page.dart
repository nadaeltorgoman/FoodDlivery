import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/app_text_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    var emailComtroller = TextEditingController();
    var passwordComtroller = TextEditingController();
    var nameComtroller = TextEditingController();
    var phoneComtroller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: Dimensions.screenHeight * 0.05),
          Container(
            height: Dimensions.screenHeight * 0.25,
            child: const Center(
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/image/logo part 1.png"),
              ),
            ),
          ),
          AppTextField(
              textController: emailComtroller,
              hintText: "Email",
              icon: Icons.email),
          SizedBox(height: Dimensions.height20),
          AppTextField(
              textController: passwordComtroller,
              hintText: "Password",
              icon: Icons.password_sharp),
          SizedBox(height: Dimensions.height20),
          AppTextField(
              textController: nameComtroller,
              hintText: "Name",
              icon: Icons.person),
          SizedBox(height: Dimensions.height20),
          AppTextField(
              textController: phoneComtroller,
              hintText: "Phone",
              icon: Icons.phone),
          SizedBox(height: Dimensions.height20),
        ],
      ),
    );
  }
}
