import 'dart:core';

import 'package:flutter/material.dart';
import 'package:food_delivery/src/presentations/sign_up/set_name_page.dart';
import 'package:food_delivery/src/presentations/sign_up/sign_up_page.dart';

import 'home.dart';

// ignore: avoid_classes_with_only_static_members
class AppRoutes{
  static String home = '/';
  static String signUp = '/signUp';
  static String setName = '/setName';
  static Map<String, WidgetBuilder> routes= <String, WidgetBuilder>{
    home: (BuildContext context) => const Home(),
    signUp: (BuildContext context) => const SignUpPage(),
    setName: (BuildContext context) => const SetNamePage(),
  };
}