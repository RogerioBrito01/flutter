import 'package:application/app/modules/signup/widgets/background.dart';
import 'package:application/app/modules/signup/widgets/or_divider.dart';
import 'package:application/app/modules/signup/widgets/social_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../../../global/widgets/already_have_an_account_acheck.dart';
import '../../../global/widgets/rounded_buttun.dart';
import '../../../global/widgets/rounded_input_field.dart';
import '../../../global/widgets/rounded_password_field.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "REGISTRAR",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: Get.height * 0.03),
              SvgPicture.asset(
                "assets/signup.svg",
                height: Get.height * 0.35,
              ),
              RoundedInputField(
                hintText: " Email",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onChanged: (value) {},
                showPassword: () {},
              ),
              RoundedButton(
                //color: Get.theme.primaryColor,
                text: "REGISTRAR",
                press: () {},
              ),
              SizedBox(height: Get.height * 0.03),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Get.offAndToNamed("/login");
                },
              ),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocalIcon(
                    iconSrc: "assets/facebook.svg",
                    press: () {},
                  ),
                  SocalIcon(
                    iconSrc: "assets/twitter.svg",
                    press: () {},
                  ),
                  SocalIcon(
                    iconSrc: "assets/google-plus.svg",
                    press: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
