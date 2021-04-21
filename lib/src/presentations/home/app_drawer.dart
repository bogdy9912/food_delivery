import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/auth/index.dart';
import 'package:food_delivery/src/actions/orders/index.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/app_routes.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ListTile(
          title: const Text('home'),
          leading: const Icon(Icons.home_filled),
          onTap: () {},
        ),
        ListTile(
          title: const Text('profil'),
          leading: const Icon(Icons.person_outline),
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.profile);

          },
        ),
        ListTile(
          title: const Text('favorite'),
          leading: const Icon(Icons.view_list_sharp),
          onTap: () {
            StoreProvider.of<AppState>(context).dispatch(const GetOrders());
            Navigator.pushNamed(context, AppRoutes.orders);
          },
        ),
        ListTile(
          title: const Text('add company'),
          leading: const Icon(Icons.add),
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.addCompany);
          },
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
