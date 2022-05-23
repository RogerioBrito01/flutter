import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  //variável
  final ValueChanged<String> onChanged;
  final VoidCallback showPassword;
  //Contrutor
  const RoundedPasswordField(
      {Key? key, required this.onChanged, required this.showPassword})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Retornado um Campo de testo container personalizado para um campo de testo  de senha
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: Get.theme.primaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: Get.theme.primaryColor,
          ),
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.visibility,
            ),
            onPressed: showPassword,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
