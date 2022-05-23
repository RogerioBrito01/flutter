import 'package:application/app/global/widgets/rounded_buttun.dart';
import 'package:application/app/global/widgets/rounded_input_field.dart';
import 'package:application/app/global/widgets/rounded_password_field.dart';
import 'package:application/app/modules/login/widgets/Background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../../../global/widgets/already_have_an_account_acheck.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    //Pagina de login criada com um Scaffold
    return Scaffold(
      //chamando o designer da tela pessonalizado no widget Backgroud
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: Get.height * 0.03),
              SvgPicture.asset(
                "assets/login.svg",
                height: Get.height * 0.35,
              ),
              SizedBox(height: Get.height * 0.03),
              RoundedInputField(
                hintText: " Email",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                showPassword: () {},
                onChanged: (value) {},
              ),
              RoundedButton(
                //color: Get.theme.primaryColor,
                text: "LOGIN",
                press: () {},
              ),
              SizedBox(height: Get.height * 0.03),
              AlreadyHaveAnAccountCheck(
                press: () {
                  Get.offAndToNamed('/signup');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
