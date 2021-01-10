import 'dart:core';

import 'package:flutter/material.dart';

import 'home.dart';

// ignore: avoid_classes_with_only_static_members
class Routes{
  static String home = '/';
  static Map<String, WidgetBuilder> routes= <String, WidgetBuilder>{
    home: (BuildContext context) {
      return const Home();
    },
  };
}