import 'package:flutter/material.dart';
import 'package:food_delivery/src/containers/auth/cart_container.dart';
import 'package:food_delivery/src/models/auth/index.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CartContainer(
      builder: (BuildContext context, Cart cart) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('cart'),
          ),
          body: cart == null
              ? const Center(child: Text('Nu ai produse in cos'))
              : Column(
                  children: <Widget>[
                    Expanded(
                      child: ListView.builder(
                        itemCount: cart.items.length,
                        itemBuilder: (BuildContext context, int index) {
                          final CartItem item = cart.items[index];
                          return ListTile(
                            title: Text(item.name),
                            trailing: Text((item.quantity * item.price).toStringAsFixed(2) + ' lei'),
                            subtitle: Text('${item.quantity} x ${item.price} lei'),
                          );
                        },
                      ),
                    ),
                    FlatButton(
                      child: const Text('Continua'),
                      onPressed: () {},
                    ),
                  ],
                ),
        );
      },
    );
  }
}
