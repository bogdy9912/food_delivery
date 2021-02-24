import 'package:flutter/material.dart';
import 'package:food_delivery/src/models/company/index.dart';
import 'package:food_delivery/src/presentations/meniu/dish_item_button.dart';

class DishItem extends StatelessWidget {
  const DishItem({Key key, @required this.dishes}) : super(key: key);

  final List<Dish> dishes;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List<Widget>.generate(dishes.length, (int index) {
        return Card(
          child: ListTile(
            title: Text(dishes[index].name[0].toUpperCase() + dishes[index].name.substring(1)),
            trailing: DishItemButton(dish: dishes[index]),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    width: 150,
                    child: Text(
                      dishes[index].description,
                      softWrap: false,
                    )),
                Chip(
                  label: Text(
                    dishes[index].price.toStringAsFixed(2) + ' lei',
                    style: const TextStyle(color: Colors.white),
                  ),
                  labelPadding: const EdgeInsets.symmetric(horizontal: 2),
                  backgroundColor: Colors.red,
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
