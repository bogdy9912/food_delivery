import 'package:flutter/material.dart';
import 'package:food_delivery/src/containers/auth/cart_container.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:food_delivery/src/models/company/index.dart';

class CartTotalWidget extends StatelessWidget {
  const CartTotalWidget({required Company company, required Function setTotal}): _company= company, _setTotal = setTotal;

  final Company _company;
  final Function _setTotal;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        'Total',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      trailing: CartContainer(
        builder: (BuildContext context, Cart? cart) {
          late double total;
          if ((cart?.totalAmount ?? 0) >= _company.deliveryFeeThreshold!) {
            total = cart!.totalAmount;
          } else {
            total = (cart?.totalAmount ?? 0) + _company.deliveryFee!;
          }
          _setTotal(total);
          return Text(
          '$total lei',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        );
        },
      ),
    );
  }
}
