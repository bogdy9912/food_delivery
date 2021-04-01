import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/auth/index.dart';
import 'package:food_delivery/src/models/index.dart';

class CartButton extends StatelessWidget {
  const CartButton(this.item);

  final CartItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.indeterminate_check_box,
            color: Theme.of(context).accentColor,
          ),
          onPressed: () {
            StoreProvider.of<AppState>(context).dispatch(UpdateCart(remove: item));
          },
        ),
        Text(
          '${item.quantity}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.add_box,
            color: Theme.of(context).accentColor,
          ),
          onPressed: () {
            StoreProvider.of<AppState>(context).dispatch(UpdateCart(add: item));
          },
        ),
      ],
    );
  }
}
