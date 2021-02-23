import 'package:flutter/material.dart';
import 'package:food_delivery/src/models/company/index.dart';

class DishItem extends StatelessWidget {
  const DishItem({Key key,@required this.dishes}) : super(key: key);

  final List<Dish> dishes;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List<Widget>.generate(
          dishes.length,
          (int index) {
            return ListTile(
                title: Text(dishes[index].name),
              );
          }),
    );
  }
}
