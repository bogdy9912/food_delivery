import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/orders/index.dart';
import 'package:food_delivery/src/containers/auth/cart_container.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/app_routes.dart';

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
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8,
                      ),
                      child: Stack(
                        children: <Widget>[
                          RaisedButton(
                            color: Colors.blueAccent,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                            child: Container(
                              width: double.infinity,
                              child: const Center(
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Text(
                                    'Continua',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, AppRoutes.checkout);

                            },
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.horizontal(left: Radius.circular(12)),
                            ),
                            height: 48,
                            width: 30,
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        );
      },
    );
  }
}
