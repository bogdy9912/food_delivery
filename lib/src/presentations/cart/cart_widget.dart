import 'package:flutter/material.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:food_delivery/src/presentations/widgets/cart_button.dart';

class CartWidget extends StatelessWidget {
  const CartWidget(this.item);

  final CartItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '${item.name}',
                  softWrap: true,
                  maxLines: 2,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${item.mentions ?? 'Nu ai introdus nicio mentiune'} ',
                  maxLines: 2,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '${item.price} lei',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              CartButton(item),
            ],
          ),
        ),
      ],
    );
  }
}
