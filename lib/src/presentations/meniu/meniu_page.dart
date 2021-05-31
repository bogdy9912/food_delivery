import 'package:flutter/material.dart';
import 'package:food_delivery/src/containers/auth/cart_container.dart';
import 'package:food_delivery/src/containers/auth/user_container.dart';
import 'package:food_delivery/src/containers/company/meniu_container.dart';
import 'package:food_delivery/src/models/company/index.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/meniu/back_button_meniu_app_bar.dart';
import 'package:food_delivery/src/presentations/meniu/dish_item.dart';
import 'package:food_delivery/src/presentations/meniu/floating_button_cart_with_badge.dart';

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
              floatingActionButton: FloatingButtonCartWithBadge(company!),
            ),
          );
        },
      ),
    );
  }
}
