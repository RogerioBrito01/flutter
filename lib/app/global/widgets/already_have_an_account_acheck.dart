import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  //Variaves
  final bool login;
  final VoidCallback press;
  //contrutor
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //uma linha
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Não tem uma conta? " : "Já tem uma conta ?  ",
          style: TextStyle(color: Get.theme.primaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Inscreva-se" : "Entrar",
            style: TextStyle(
              color: Get.theme.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
