import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/auth/index.dart';
import 'package:food_delivery/src/models/index.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ListTile(
          title: const Text('home'),
          leading: const Icon(Icons.logout),
          onTap: () {},
        ),
        ListTile(
          title: const Text('favorite'),
          leading: const Icon(Icons.logout),
          onTap: () {},
        ),
        ListTile(
          title: const Text('Iesire'),
          leading: const Icon(Icons.logout),
          onTap: () {
            StoreProvider.of<AppState>(context).dispatch(const SignOut());
          },
        ),
      ],
    );
  }
}
