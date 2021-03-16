import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/company/index.dart';
import 'package:food_delivery/src/actions/orders/index.dart';
import 'package:food_delivery/src/containers/auth/cart_container.dart';
import 'package:food_delivery/src/containers/company/meniu_container.dart';
import 'package:food_delivery/src/models/company/index.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/app_routes.dart';
import 'package:food_delivery/src/presentations/meniu/dish_item.dart';

class MeniuPage extends StatelessWidget {
  const MeniuPage({Key key, this.company}) : super(key: key);

  final Company company;

  @override
  Widget build(BuildContext context) {
    return CartContainer(
      builder: (BuildContext context, Cart cart) {
        return MeniuContainer(
          builder: (BuildContext context, Meniu meniu) => Scaffold(
            appBar: AppBar(
              title: Text(company.name),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                  StoreProvider.of<AppState>(context).dispatch(const GetMeniu.event());
                },
              ),
            ),
            body: meniu == null
                ? const Center(child: Text('Nu exista un meniu'))
                : ListView.builder(
                    itemCount: meniu.items.length,
                    itemBuilder: (BuildContext context, int index) {
                      final MeniuItem item = meniu.items[index];
                      return Column(
                        children: <Widget>[
                          ListTile(
                            leading: const Icon(Icons.set_meal),
                            title: Text(
                              item.category.toUpperCase(),
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                          DishItem(dishes: item.dishes.toList()),
                        ],
                      );
                    },
                  ),
            floatingActionButton: Stack(
              alignment: AlignmentDirectional.topEnd,
              children: <Widget>[
                FloatingActionButton(
                  child: Icon(cart == null ? Icons.shopping_basket_outlined : Icons.shopping_basket),
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.cart);
                    StoreProvider.of<AppState>(context).dispatch(UpdateOrderInfo(companyId: company.id));

                  },
                ),
                if (cart != null)
                Container(
                  child: Text(
                    '${cart.totalProducts}',
                    style: const TextStyle(color: Colors.white),
                  ),
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
