import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/orders/index.dart';
import 'package:food_delivery/src/containers/auth/cart_container.dart';
import 'package:food_delivery/src/containers/auth/user_container.dart';
import 'package:food_delivery/src/containers/company/companies_container.dart';
import 'package:food_delivery/src/containers/orders/order_info_container.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/cart/cart_widget.dart';
import 'package:food_delivery/src/presentations/widgets/select_address_page2.dart';

class CartPage2 extends StatefulWidget {
  const CartPage2(this.company);

  final Company? company;

  @override
  _CartPage2State createState() => _CartPage2State();
}

class _CartPage2State extends State<CartPage2> {
  late double total;

  @override
  Widget build(BuildContext context) {
    return OrderInfoContainer(
      builder: (BuildContext context, OrderInfo info) {
        return CompaniesContainer(
          builder: (BuildContext context, List<Company> companies) {
//            final Company? company = companies.where((Company element) => element.id == info.companyId).first;
            return UserContainer(
              builder: (BuildContext context, AppUser? currentUser) => CartContainer(
                builder: (BuildContext context, Cart? cart) {
                  if ((cart?.totalAmount ?? 0) >= widget.company!.deliveryFeeThreshold!) {
                    total = cart!.totalAmount;
                  } else {
                    total = (cart?.totalAmount ?? 0) + widget.company!.deliveryFee!;
                  }
                  StoreProvider.of<AppState>(context).dispatch(UpdateOrderInfo(products: cart?.items));
                  return Scaffold(
                    backgroundColor: Colors.white,
                    appBar: AppBar(
                      title: const Text('check out'),
                      centerTitle: true,
                      elevation: 0,
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                    body: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: max(
                                MediaQuery.of(context).size.height -
                                    AppBar().preferredSize.height -
                                    MediaQuery.of(context).padding.bottom -
                                    MediaQuery.of(context).padding.top -
                                    360,
                                200),
//                    height: 200,
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
                                  final CartItem? item = cart?.items[index];
                                  if (item == null) {
                                    return Container();
                                  }
//                                    return Container();
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CartWidget(item),
                                  );
                                }),
                          ),
                          Container(
                            color: Colors.white,
                            height: 360,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
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
                                          children: <Widget>[
                                            const Text(
                                              'Comanda',
                                              style: TextStyle(
                                                color: Colors.black54,
                                              ),
                                            ),
                                            Text(
                                              '${cart?.totalAmount ?? 0} lei',
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 6, bottom: 8.0, right: 4),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            const Text(
                                              'Livrare',
                                              style: TextStyle(
                                                color: Colors.black54,
                                              ),
                                            ),
                                            if ((cart?.totalAmount ?? 0) < widget.company!.deliveryFeeThreshold!)
                                              Text(
                                                '${widget.company!.deliveryFee} lei',
                                              )
                                            else
                                              const Text(
                                                'Gratis',
                                              ),
                                          ],
                                        ),
                                      ),
                                      const Divider(),
                                    ],
                                  ),
                                ),
                                ListTile(
                                  title: const Text(
                                    'Total',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  trailing: Text(
                                    '$total lei',
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16),
                                  child: ElevatedButton(
                                    child: Container(
                                      width: double.infinity,
                                      height: 50,
                                      child: const Center(child: Text('Finalizare comanda')),
                                    ),
                                    onPressed: () {
                                      if (info.address?.address != null && info.products.isNotEmpty) {
                                        print('face comanda');
                                      } else
                                        print('nu face comanda');
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
