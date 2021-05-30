import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/auth/index.dart';
import 'package:food_delivery/src/actions/index.dart';
import 'package:food_delivery/src/actions/orders/index.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/app_routes.dart';
import 'package:food_delivery/src/presentations/mixin/dialog_mixin.dart';

class AppDrawer extends StatelessWidget with DialogMixin {

  void _response(AppAction action, BuildContext context){
  if (action is GetOrdersError){
    showErrorDialog(context, 'Server Error', action.error);
  }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ListTile(
          title: const Text('profil'),
          leading: const Icon(Icons.person_outline),
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.profile);
          },
        ),
        ListTile(
          title: const Text('Comenzile mele'),
          leading: const Icon(Icons.view_list_sharp),
          onTap: () {
            StoreProvider.of<AppState>(context).dispatch(GetOrders(response: (AppAction action) => _response(action , context)));
            Navigator.pushNamed(context, AppRoutes.orders);
          },
        ),
//        ListTile(
//          title: const Text('Oferte'),
//          leading: const Icon(Icons.sticky_note_2_outlined),
//          onTap: () {},
//        ),
//        ListTile(
//          title: const Text('add company'),
//          leading: const Icon(Icons.add),
//          onTap: () {
//            Navigator.pushNamed(context, AppRoutes.addCompany);
//          },
//        ),
        ListTile(
          title: const Text('Delogheaza-te'),
          leading: const Icon(Icons.logout),
          onTap: () {
            StoreProvider.of<AppState>(context).dispatch(const SignOut());
          },
        ),
      ],
    );
  }
}
