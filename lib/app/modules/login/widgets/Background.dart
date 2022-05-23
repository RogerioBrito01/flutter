import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Background extends StatelessWidget {
  //Variaveis
  final Widget child;
  //contrutor
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //Retorado um container
    return Container(
      width: double.infinity,
      height: Get.size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/main_top.png",
              width: Get.size.width * 0.35,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              "assets/login_bottom.png",
              width: Get.width * 0.4,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
