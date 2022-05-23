import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  //variavel
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  //contrutor
  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Retonando widgets containet para um campo de testo
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: Get.theme.primaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Get.theme.primaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
