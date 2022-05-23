// e a frente do aplicativo
import 'package:get/get.dart';

import 'package:flutter/material.dart';

import 'package:splash_screen_view/SplashScreenView.dart';

import '../../routes/app_routes.dart';
import 'initial_controler.dart';

class InitialView extends GetView<InitialController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('fido')),
        body: Stack(
          children: <Widget>[
            SplashScreenView(
                duration: 5000,
                imageSize: 130,
                //textType: TextType.ColorizeAnimationText,
                textStyle: const TextStyle(
                  fontSize: 40.0,
                ),
                colors: const [
                  Colors.purple,
                  Colors.blue,
                  Colors.yellow,
                  Colors.red,
                ],
                backgroundColor: Colors.white,
                navigateRoute: const Text(Routes.WELCOME)),
            Container(
                margin: const EdgeInsets.all(100),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/logo.png"),
                  fit: BoxFit.none,
                )))
          ],
        ));
  }
}
