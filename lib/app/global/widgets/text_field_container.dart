import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldContainer extends StatelessWidget {
  //variável
  final Widget child;
  //Container
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    //Container
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: Get.width * 0.8,
      decoration: BoxDecoration(
        color: Get.theme.primaryColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
