import 'dart:core';

import 'package:flutter/material.dart';
import 'package:food_delivery/src/models/company/index.dart';
import 'package:food_delivery/src/presentations/cart/cart_page.dart';

import 'package:food_delivery/src/presentations/checkout/checkout_page.dart';
import 'package:food_delivery/src/presentations/checkout/payment_page.dart';
import 'package:food_delivery/src/presentations/meniu/meniu_page.dart';
import 'package:food_delivery/src/presentations/profile/profile_page.dart';
import 'package:food_delivery/src/presentations/search/search_page.dart';
import 'package:food_delivery/src/presentations/sign_up/set_name_page.dart';
import 'package:food_delivery/src/presentations/sign_up/sign_up_page.dart';
import 'package:food_delivery/src/presentations/widgets/add_address_page.dart';
import 'package:food_delivery/src/presentations/widgets/select_address_page.dart';

import 'home.dart';
import 'others/add_company.dart';

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
  static String selectAddressPage = '/selectAddressPage';
  static String paymentPage = '/paymentPage';
  static Map<String, WidgetBuilder> routes= <String, WidgetBuilder>{
    home: (BuildContext context) => const Home(),
    signUp: (BuildContext context) => const SignUpPage(),
    setName: (BuildContext context) => const SetNamePage(),
    addCompany: (BuildContext context) => const AddCompany(),
    search: (BuildContext context) => const SearchPage(),
    meniu: (BuildContext context) {
      final Company arg = ModalRoute.of(context).settings.arguments;
      return MeniuPage(company: arg);
    },
    cart: (BuildContext context)  {
      final Company arg = ModalRoute.of(context).settings.arguments;
      return CartPage(company: arg);
    },
    profile: (BuildContext context) =>  const ProfilePage(),
    checkout: (BuildContext context) {
      final Company arg = ModalRoute.of(context).settings.arguments;
      return  CheckoutPage(company: arg);
    },
    addAddressPage: (BuildContext context) => const AddAddressPage(),
    selectAddressPage: (BuildContext context) => const SelectAddressPage(),
    paymentPage: (BuildContext context) => const PaymentPage(),
  };
}