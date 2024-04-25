import 'package:bas_fast/core/constant/color.dart';
import 'package:bas_fast/routes.dart';
import 'package:bas_fast/view/screen/Auth/login.dart';
import 'package:bas_fast/view/screen/onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo654',
      theme: ThemeData(
        fontFamily: "IBMPlexSansArabic",
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 32,
            color: AppColor.blue,
            fontWeight: FontWeight.bold,
          ),
          bodyText1: TextStyle(
              fontSize: 16,
              height: 1.5,
              fontStyle: FontStyle.italic,
              color: AppColor.blue),
        ),
      ),
      home: const Login(),
      routes: routes,
    );
  }
}
