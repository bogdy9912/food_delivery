import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/orders/index.dart';
import 'package:food_delivery/src/containers/auth/cart_container.dart';
import 'package:food_delivery/src/containers/auth/user_container.dart';
import 'package:food_delivery/src/containers/orders/order_info_container.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/models/orders/index.dart';
import 'package:food_delivery/src/presentations/app_routes.dart';
import 'package:food_delivery/src/presentations/widgets/next_button_widget.dart';

class HomeDeliveryTab extends StatefulWidget {
  const HomeDeliveryTab({@required this.company});

  final Company company;
//  const AddressPoint companyAddress = AddressPoint((b) => b..)
//  final AddressPoint companyAddress = AddressPoint((AddressPointBuilder b) {
//    b
//      ..contactName = _name
//      ..contactPhone = _telephone
//      ..address = _address
//      ..city = _city
//      ..town = _town;
//  });
//  StoreProvider.of<AppState>(context).dispatch(UpdateAddresses(uid: user.uid, add: add));
//

  @override
  _HomeDeliveryTabState createState() => _HomeDeliveryTabState();
}

class _HomeDeliveryTabState extends State<HomeDeliveryTab> {
  final TextEditingController _information = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CartContainer(
      builder: (BuildContext context, Cart cart) {
        return OrderInfoContainer(
          builder: (BuildContext context, OrderInfo info) {
            double total;
            if (cart.totalAmount > widget.company.deliveryFeeThreshold) {
              total = cart.totalAmount;
            } else {
              total = cart.totalAmount + widget.company.deliveryFee;
            }
            return UserContainer(
              builder: (BuildContext context, AppUser user) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        if (user.addresses.isEmpty)
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Address for delivery',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'In this moment you don\'t have any addresses saved, please enter one.',
                                      ),
                                    ),
                                    const Divider(),
                                    Center(
                                      child: FlatButton(
                                        onPressed: () {
                                          Navigator.pushNamed(context, AppRoutes.addAddressPage);
                                        },
                                        child: const Text(
                                          'ADD AN ADDRESS',
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ),
                                    ),
                                    const Divider(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        if (info?.address != null)
                          Column(
                            children: <Widget>[
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Address for delivery',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text('${info.address.contactName} - ${info.address.contactPhone}'),
                                    Text('${info.address.address} - ${info.address.city}, ${info.address.town}'),
                                  ],
                                ),
                              ),
                              const Divider(),
                              Center(
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, AppRoutes.selectAddressPage);
                                  },
                                  child: const Text(
                                    'CHANGE ADDRESS',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                              ),
                              const Divider(),
                            ],
                          )
                        else
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Address for delivery',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'In this moment you don\'t have any addresses selected, please select one.',
                                      ),
                                    ),
                                    const Divider(),
                                    Center(
                                      child: FlatButton(
                                        onPressed: () {
                                          Navigator.pushNamed(context, AppRoutes.selectAddressPage);
                                        },
                                        child: const Text(
                                          'SELECT AN ADDRESS',
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ),
                                    ),
                                    const Divider(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        TextField(
                          controller: _information,
                          maxLines: 4,
                          decoration: const InputDecoration(
                              helperMaxLines: 3,
                              hintText: 'Adauga informatii suplimentare pentru restaurant sau livrator'),
                        ),

                        Column(
                          children: <Widget>[
                            const Divider(),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      const Text(
                                        'Total produse:',
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
                                          'Livrare:',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                        Text(
                                          widget.company.deliveryFee.toString(),
                                          style: const TextStyle(
                                            color: Colors.black,
                                          ),
                                        )

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
                                        '$total lei',
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
                            NextButtonWidget(
                              function: () {
                                {
                                  if (info?.address != null) {
                                    Navigator.pushNamed(context, AppRoutes.paymentPage);

                                    StoreProvider.of<AppState>(context)
                                        .dispatch(UpdateOrderInfo(total: cart.totalAmount));
                                    StoreProvider.of<AppState>(context)
                                        .dispatch(UpdateOrderInfo(products: cart.items));
                                    StoreProvider.of<AppState>(context)
                                        .dispatch(UpdateOrderInfo(instructions: _information.text));
                                    print('homeDelivery_tab: info = $info');
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
                                }
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
