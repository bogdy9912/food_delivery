import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/company/index.dart';
import 'package:food_delivery/src/containers/auth/cart_container.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/app_routes.dart';

class BackButtonMeniuAppBar extends StatelessWidget {
  const BackButtonMeniuAppBar();

  @override
  Widget build(BuildContext context) {
    return CartContainer(
      builder:(BuildContext context, Cart? cart) => IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          if (cart!.items.isEmpty) {
            Navigator.popUntil(
              context,
                  (Route<dynamic> route) => route.isFirst,
            );
            Navigator.pushReplacementNamed(context, AppRoutes.home);
            StoreProvider.of<AppState>(context).dispatch(const GetMeniu.event());
          } else {
            showDialog<AlertDialog>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                content: Container(
                  height: 150,
                  child: const Center(
                    child: Text('Daca iesiti o sa pierdeti toate produsele din cos!'),
                  ),
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.popUntil(
                        context,
                            (Route<dynamic> route) => route.isFirst,
                      );
                      Navigator.pushReplacementNamed(context, AppRoutes.home);
                      StoreProvider.of<AppState>(context).dispatch(const GetMeniu.event());
                    },
                    child: const Text('Iesi oricum'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Cancel'),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
