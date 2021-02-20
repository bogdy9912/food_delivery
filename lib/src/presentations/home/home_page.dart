import 'package:flutter/material.dart';
import 'package:food_delivery/src/presentations/home/app_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      drawer: Drawer(child: AppDrawer(),),
    );
  }
}
