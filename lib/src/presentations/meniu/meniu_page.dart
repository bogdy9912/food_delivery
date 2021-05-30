import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/orders/index.dart';
import 'package:food_delivery/src/containers/auth/cart_container.dart';
import 'package:food_delivery/src/containers/auth/user_container.dart';
import 'package:food_delivery/src/containers/company/meniu_container.dart';
import 'package:food_delivery/src/models/company/index.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/app_routes.dart';
import 'package:food_delivery/src/presentations/meniu/back_button_meniu_app_bar.dart';
import 'package:food_delivery/src/presentations/meniu/dish_item.dart';

class MeniuPage extends StatelessWidget {
  const MeniuPage({Key? key, this.company}) : super(key: key);

  final Company? company;

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? currentUser) => CartContainer(
        builder: (BuildContext context, Cart? cart) {
          return MeniuContainer(
            builder: (BuildContext context, Meniu? meniu) => Scaffold(
              appBar: AppBar(
//                title: Text(company!.name),
                centerTitle: true,
                elevation: 0,
                backgroundColor: Colors.transparent,
                leading: const BackButtonMeniuAppBar(),
              ),
              body: meniu == null
                  ? const Center(child: Text('Nu exista un meniu'))
                  : ListView.builder(
                      padding: const EdgeInsets.all(16),
                      itemCount: meniu.items.length + 1,
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 0) {
                          return Column(
                            children: <Widget>[
                              Text(
                                company!.name,
                                style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 16),
                            ],
                          );
                        }

                        final MeniuItem item = meniu.items[index - 1];
                        return Column(
                          children: <Widget>[
                            ListTile(
                              leading: const Icon(Icons.restaurant_menu),
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
                      StoreProvider.of<AppState>(context).dispatch(UpdateOrderInfo(companyId: company!.id));
                      StoreProvider.of<AppState>(context)
                          .dispatch(UpdateOrderInfo(address: currentUser!.defaultAddress));
//                      StoreProvider.of<AppState>(context)
//                          .dispatch(UpdateOrderInfo(methodOfPayment: currentUser.defaultPaymentMethod));
                      Navigator.pushNamed(context, AppRoutes.cart2, arguments: company);
                    },
                  ),
                  if (cart != null && cart.totalProducts > 0)
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
      ),
    );
  }
}
