import 'package:bas_fast/core/constant/route.dart';
import 'package:bas_fast/view/screen/Auth/login.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login()
};
