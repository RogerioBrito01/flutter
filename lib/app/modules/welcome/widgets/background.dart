import 'package:flutter/material.dart';
import 'package:get/get.dart';
//Container para a pagina welcome como duas imagem

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    required this.child,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/main_top.png",
              width: Get.width * 0.3,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/main_bottom.png",
              width: Get.width * 0.2,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
