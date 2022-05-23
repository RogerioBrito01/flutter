// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:application/app/data/base/base_url.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthApiClient extends GetConnect {
  Future<Map<String, dynamic>> login(String username, String password) async {
    var response = await post(
        baseUrl + "/login", {"username": username, "password": password});

    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      Get.defaultDialog(
          title: "Login", content: Text("Login/Senha não confere."));
      //Evitar erro.
      return login(username, password);
    }
  }
  /*Future<Map<String, dynamic>> login(String username, String password) async {
    try {
      var response = await http.post(baseUrl + "/login",
          body: {"username": username, "password": password});
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        print('erro-get:' + response.body);
      }
    } catch (err) {
      print(err);
    }
    return null;
  }
  //metodo de login pegando nome e senha
  //o metodo esta pegando o map da api

  Future<String?> login(String username, String password) async {
    var response = await post(
        // pegando o mapa da a api passando como paramento os dois campos da api
        baseUrl! + "/login",
        {"username": username, "password": password});
    print(response.body);
    //realizando a vlidação de erro  200 se status for 200 retorna   corpo da api
    if (response.statusCode == 200) {
      return response.body;
    } else {
      // se nao retona login e senha nao confere
      Get.defaultDialog(
          title: "Login", content: Text("Login/Senha não confere."));
      //e retorna nulo
      return null;
    }
  }*/

//metodo de login tipo String e dinamico
  //Future<Map<String, dynamic>?> register(
  /*  String username, String password) async {
    var response = await post(
      baseUrl! + "/register",
      {"username": username, "password": password},
    );

    if (response.statusCode == 200) {
      return response.body;
    } else {
      Get.defaultDialog(
          title: "Cadastro", content: Text("${response.body['message']}"));
      return null;
    }
  }*/
}
