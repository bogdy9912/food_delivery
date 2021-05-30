import 'package:flutter/material.dart';
import 'package:food_delivery/src/containers/auth/cart_container.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:food_delivery/src/models/company/index.dart';

class CartDeliveryPrice extends StatelessWidget {
  const CartDeliveryPrice({required Company company}): _company = company;

  final Company _company;

  @override
  Widget build(BuildContext context) {
    return CartContainer(
      builder:(BuildContext context, Cart? cart) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Text(
            'Livrare',
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
          if ((cart?.totalAmount ?? 0) < _company.deliveryFeeThreshold!)
            Text(
              '${_company.deliveryFee} lei',
            )
          else
            const Text(
              'GRATIS',
              style: TextStyle(color: Colors.green, fontWeight: FontWeight.w400),
            ),
        ],
      ),
    );
  }
}
