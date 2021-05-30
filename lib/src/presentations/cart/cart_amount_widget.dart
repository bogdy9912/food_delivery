import 'package:flutter/material.dart';
import 'package:food_delivery/src/containers/auth/cart_container.dart';
import 'package:food_delivery/src/models/auth/index.dart';


class CartAmountWidget extends StatelessWidget {
  const CartAmountWidget();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Text(
          'Comanda',
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
        CartContainer(
          builder:(BuildContext context, Cart? cart) => Text(
            '${cart?.totalAmount ?? 0} lei',
          ),
        ),
      ],
    );
  }
}
