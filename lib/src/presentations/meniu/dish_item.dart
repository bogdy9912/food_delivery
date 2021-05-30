import 'package:flutter/material.dart';
import 'package:food_delivery/src/models/company/index.dart';
import 'package:food_delivery/src/presentations/meniu/dish_item_button.dart';

class DishItem extends StatelessWidget {
  const DishItem({required this.dishes});

  final List<Dish> dishes;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List<Widget>.generate(dishes.length, (int index) {
        return ListTile(
          title: Text(dishes[index].name[0].toUpperCase() + dishes[index].name.substring(1)),
          leading: dishes[index].image == null? null : Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                dishes[index].price.toStringAsFixed(2) + ' lei',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              DishItemButton(dish: dishes[index]),
            ],
          ),
          subtitle: Container(
            width: 100,
            child: Text(
              dishes[index].description ?? '',
              style: const TextStyle(fontSize: 12),
              maxLines: 2,
            ),
          ),
        );
      }),
    );
  }
}
