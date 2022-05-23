import 'package:application/app/routes/app_pages.dart';
import 'package:application/app/routes/app_routes.dart';
import 'package:application/app/themes/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'appTeste',
      debugShowCheckedModeBanner: false,
      theme: appThemeData,
      initialRoute: Routes.INITIAL,
      getPages: AppPages.routes,
      // initialBinding: AppIni,
    ),
  );
}
