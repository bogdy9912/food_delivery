import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/auth/index.dart';
import 'package:food_delivery/src/containers/auth/cart_container.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:food_delivery/src/models/index.dart';

class DishItemButton extends StatelessWidget {
  const DishItemButton({Key? key, this.dish}) : super(key: key);

  final Dish? dish;

  @override
  Widget build(BuildContext context) {
    return CartContainer(builder: (BuildContext context, Cart? cart) {
      final CartItem? item = cart?.items.where((CartItem e) => e.id == dish!.id).first;
      return InkWell(
        child: Icon(
          item == null ? Icons.add_circle : Icons.check_circle,
          color: Colors.green,
        ),
        onTap: () {
          StoreProvider.of<AppState>(context).dispatch(UpdateCart(add: dish));
        },
      );
    });
  }
}
