import 'package:flutter/material.dart';
import 'package:food_delivery/src/containers/company/meniu_container.dart';
import 'package:food_delivery/src/models/company/index.dart';
import 'package:food_delivery/src/presentations/meniu/dish_item.dart';

class MeniuPage extends StatelessWidget {
  const MeniuPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MeniuContainer(
      builder: (BuildContext context, Meniu meniu) => Scaffold(
        appBar: AppBar(
          title: const Text('meniu'),
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
                        title: Text(item.category),
                      ),
                      DishItem(dishes: item.dishes.toList()),
                    ],
                  );
                },
              ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add_shopping_cart),
          onPressed: () {},
        ),
      ),
    );
  }
}
