import 'dart:core';

import 'package:flutter/material.dart';
import 'package:food_delivery/src/models/company/index.dart';
import 'package:food_delivery/src/presentations/meniu/meniu_page.dart';
import 'package:food_delivery/src/presentations/orders/orders_page.dart';
import 'package:food_delivery/src/presentations/profile/profile_page.dart';
import 'package:food_delivery/src/presentations/search/search_page.dart';
import 'package:food_delivery/src/presentations/sign_up/set_name_page.dart';
import 'package:food_delivery/src/presentations/sign_up/sign_up_page.dart';

import 'cart/cart_page.dart';
import 'home.dart';


// ignore: avoid_classes_with_only_static_members
class AppRoutes{
  static String home = '/';
  static String signUp = '/signUp';
  static String setName = '/setName';
  static String addCompany = '/addCompany';
  static String search = '/search';
  static String meniu = '/meniu';
  static String cart = '/cart';
  static String lala = '/lala';
  static String profile = '/profile';
  static String checkout = '/checkout';
  static String addAddressPage = '/addAddressPage';
  static String selectAddressPage2 = '/selectAddressPage2';
  static String selectAddressPage = '/selectAddressPage';
  static String paymentPage = '/paymentPage';
  static String cart2 = '/cart2';
  static String orders = '/orders';
  static Map<String, WidgetBuilder> routes= <String, WidgetBuilder>{
    home: (BuildContext context) => const Home(),
    signUp: (BuildContext context) => const SignUpPage(),
    setName: (BuildContext context) => const SetNamePage(),
    search: (BuildContext context) => const SearchPage(),
    meniu: (BuildContext context) {
      final Company? arg = ModalRoute.of(context)!.settings.arguments as Company?;
      return MeniuPage(company: arg);
    },


    profile: (BuildContext context) =>  const ProfilePage(),




//    selectAddressPage2: (BuildContext context) => const SelectAddressPage2(),

    orders: (BuildContext context) => OrdersPage(),
    cart2: (BuildContext context) {
      final Company? arg = ModalRoute.of(context)!.settings.arguments as Company?;
      return CartPage(arg);
    },
  };
}