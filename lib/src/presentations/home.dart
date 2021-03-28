import 'package:flutter/material.dart';

import 'package:food_delivery/src/containers/auth/user_container.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:food_delivery/src/presentations/home/home_page.dart';
import 'package:food_delivery/src/presentations/login/login.dart';

class Home extends StatelessWidget {
  const Home();
  @override
  Widget build(BuildContext context) {
    return UserContainer(builder: (BuildContext context, AppUser? user) {
      if (user == null){
        return const LoginPage();
      }
      else{
        return const HomePage();
      }
    });
  }
}
