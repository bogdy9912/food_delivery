import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/src/containers/auth/cart_container.dart';
import 'package:food_delivery/src/containers/auth/user_container.dart';
import 'package:food_delivery/src/containers/orders/order_info_container.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/widgets/select_address_page2.dart';

class CartPage2 extends StatelessWidget {
  const CartPage2();

  @override
  Widget build(BuildContext context) {
    return OrderInfoContainer(
      builder: (BuildContext context, OrderInfo info) => UserContainer(
        builder: (BuildContext context, AppUser? currentUser) => CartContainer(
          builder: (BuildContext context, Cart? cart) => Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: const Text('check out'),
              centerTitle: true,
              elevation: 0,
              backgroundColor: Theme.of(context).primaryColor,
            ),
            body: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        bottomRight: Radius.circular(24),
                      ),
                    ),
                    child: ListView.builder(
                        itemCount: cart?.items.length ?? 0,
                        itemBuilder: (BuildContext context, int index) {
                          final CartItem? item = cart?.items[0];
                          if (item == null) {
                            return Container();
                          }
                          return ListTile(
                            title: Text(item.name),
                            trailing: Text((item.quantity * item.price).toStringAsFixed(2) + ' lei'),
                            subtitle: Text('${item.quantity} x ${item.price} lei'),
                          );
                        }),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: ListTile(
                          title: const Text(
                            'Adresa de livrare',
                            style: TextStyle(
//                        color: Theme.of(context).accentColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          trailing: TextButton(
                            child: const Text('Schimba'),
                            onPressed: () {
//                              Navigator.pushNamed(context, AppRoutes.selectAddressPage);
//                              Navigator.pushNamed(context, AppRoutes.selectAddressPage2);
                              showDialog<dynamic>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: Center(
                                    child: Text(
                                      'Adrese',
                                      style: TextStyle(
                                        color: Theme.of(context).accentColor,
                                      ),
                                    ),
                                  ),
                                  content: SelectAddressPage2(currentUser: currentUser!),
                                ),
                              );
                            },
                          ),
                          subtitle: info.address == null
                              ? const Text(
                                  'Nu ai nicio adresa introdusa',
                                  style: TextStyle(),
                                  maxLines: 2,
                                )
                              : Text.rich(
                                  TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(text: '${info.address!.contactName}'),
                                      TextSpan(text: ' - ${info.address!.contactPhone}'),
                                      TextSpan(text: '\n${info.address!.address}'),
//                                    TextSpan(text: '\n${info.address!.city}'),
//                                    TextSpan(text: ' ${info.address!.town}'),
                                    ],
                                  ),
                                ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                const Text(
                                  'Metoda de plata',
                                  style: TextStyle(
//                                color: Theme.of(context).accentColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.credit_card),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            const Divider(),
                            Padding(
                              padding: const EdgeInsets.only(top: 8, bottom: 6.0, right: 4),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const <Widget>[
                                  Text(
                                    'Comanda',
                                    style: TextStyle(
                                      color: Colors.black54,
                                    ),
                                  ),
                                  Text(
                                    '30 lei',
                                    style: TextStyle(
//                                  color: Theme.of(context).accentColor,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6, bottom: 8.0, right: 4),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const <Widget>[
                                  Text(
                                    'Livrare',
                                    style: TextStyle(
                                      color: Colors.black54,
                                    ),
                                  ),
                                  Text(
                                    '10 lei',
                                    style: TextStyle(
//                                  color: Theme.of(context).accentColor,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            const Divider(),
                          ],
                        ),
                      ),
                      const ListTile(
                        title: Text(
                          'Total',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        trailing: Text(
                          '40 lei',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
//                        color: Theme.of(context).accentColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Container(
                            width: double.infinity,
//                        color: Colors.orange,
                            height: 50,
                            child: const Center(child: Text('Finalizare comanda')),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
