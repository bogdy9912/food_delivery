import 'package:food_delivery/src/containers/auth/cart_container.dart';
import 'package:food_delivery/src/containers/orders/order_info_container.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/models/orders/index.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/src/presentations/checkout/home_delivery_tab.dart';
import 'package:food_delivery/src/presentations/checkout/personal_pickup_tab.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({@required this.company});

  final Company company;

  @override
  Widget build(BuildContext context) {
    return CartContainer(
      builder: (BuildContext context, Cart cart) {
        return OrderInfoContainer(
          builder: (BuildContext context, OrderInfo info) {
            double total;
            if (cart.totalAmount > 2000) {
              total = cart.totalAmount;
            } else {
              total = cart.totalAmount + 12.90;
            }
            return Scaffold(
              appBar: AppBar(
                iconTheme: const IconThemeData().copyWith(color: Colors.blue),
                title: const Text(
                  'Checkout',
                  style: TextStyle(color: Colors.black),
                ),
                elevation: 0,
                backgroundColor: Colors.transparent,
              ),
              body: DefaultTabController(
                length: 2,
                child: Column(
                  children: <Widget>[
                    const TabBar(
                      unselectedLabelColor: Colors.black,
                      labelColor: Colors.blue,
                      tabs: <Widget>[
                        Tab(
                          text: 'Home delivery',
                        ),
                        Tab(
                          text: 'Personal pick-up',
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: <Widget>[
                          HomeDeliveryTab(company: company,),
                          PersonalPickupTab(company: company),
                        ],
                      ),
                    ),
               /*     const Divider(),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              const Text(
                                'Total products:',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '${cart.totalAmount.toStringAsFixed(2)} lei',
                                style: const TextStyle(),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                const Text(
                                  'Delivery cost:',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                if (cart.totalAmount > 2000)
                                  const Text(
                                    'FREE',
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                  )
                                else
                                  const Text('12.90 lei'),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              const Text(
                                'Total:',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '${total.toStringAsFixed(2)} lei',
                                style: const TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
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
                                    'CONTINUE',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            onPressed: () {
                              if (info?.address != null) {
                                Navigator.pushNamed(context, AppRoutes.paymentPage);


                                StoreProvider.of<AppState>(context).dispatch(UpdateOrderInfo(total: total));
                                StoreProvider.of<AppState>(context).dispatch(UpdateOrderInfo(products: cart.items));
                              } else {
                                showDialog<AlertDialog>(
                                  context: context,
                                  builder: (BuildContext context) => AlertDialog(
                                    title: const Text('Please enter an address'),
                                    actions: <Widget>[
                                      FlatButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text('CLOSE'))
                                    ],
                                  ),
                                );
                              }
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
                    ),*/
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}