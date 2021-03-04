import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/auth/index.dart';
import 'package:food_delivery/src/actions/index.dart';
import 'package:food_delivery/src/actions/orders/index.dart';
import 'package:food_delivery/src/containers/auth/cart_container.dart';
import 'package:food_delivery/src/containers/orders/order_info_container.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/models/orders/index.dart';
import 'package:food_delivery/src/presentations/app_routes.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  PaymentMethod _method = PaymentMethod.card;
  final TextEditingController _intructions = TextEditingController();

  void _response(AppAction action) {
    if (action is CreateOrderError) {
      showDialog<AlertDialog>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Server error'),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('CLOSE'))
          ],
        ),
      );
    } else {
      StoreProvider.of<AppState>(context).dispatch(const UpdateCart());
      Navigator.popUntil(
        context,
        (Route<dynamic> route) => route.isFirst,
      );
      Navigator.pushReplacementNamed(context, AppRoutes.home);

      StoreProvider.of<AppState>(context).dispatch(const UpdateOrderInfo());
    }
  }

  @override
  Widget build(BuildContext context) {
    return OrderInfoContainer(
      builder: (BuildContext context, OrderInfo info) {
        return CartContainer(
          builder: (BuildContext context, Cart cart) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                iconTheme: const IconThemeData(color: Colors.blue),
                title: const Text(
                  'Finalizare',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              body: SingleChildScrollView (
                child: Column(
                  children: <Widget>[
                    const Text(
                      'Instructiuni pentru comanda',
                      style: TextStyle(fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        controller: _intructions,
                        maxLines: 5,
                        decoration: const InputDecoration(hintText: 'alergii sau alte mentiuni asupra mancarii'),
                      ),
                    ),
                    const Divider(),

                    const Text(
                      'Selecteaza modul de plata',
                      style: TextStyle(fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:16.0),
                      child: ListTile(
                        title: const Text(
                          'Credit/debit card',
                          style: TextStyle(fontSize: 18),
                        ),
                        subtitle: Row(
                          children: const <Widget>[
                            Icon(
                              Icons.credit_card,
                              color: Colors.black,
                            ),
                            Icon(
                              Icons.credit_card,
                              color: Colors.red,
                            ),
                            Icon(
                              Icons.credit_card,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                        leading: Radio<PaymentMethod>(
                            value: PaymentMethod.card,
                            groupValue: _method,
                            onChanged: (PaymentMethod meth) {
                              setState(() {
                                _method = meth;
                              });
                            }),
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        'Cash',
                        style: TextStyle(fontSize: 18),
                      ),
                      subtitle: Row(
                        children: const <Widget>[
                          Icon(
                            Icons.money,
                            color: Colors.green,
                          ),
                        ],
                      ),
                      leading: Radio<PaymentMethod>(
                          value: PaymentMethod.cash,
                          groupValue: _method,
                          onChanged: (PaymentMethod meth) {
                            setState(() {
                              _method = meth;
                            });
                          }),
                    ),
//                  const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Order summary',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              const Text(
                                'Total delivery:',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                info.total != null ? (info.total).toStringAsFixed(2) + ' lei' : '',
                                style: const TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
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
                                    'FINISH',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            onPressed: () {
                              StoreProvider.of<AppState>(context).dispatch(UpdateOrderInfo(methodOfPayment: _method));
                              StoreProvider.of<AppState>(context)
                                  .dispatch(UpdateOrderInfo(instructions: _intructions.text));
                              StoreProvider.of<AppState>(context).dispatch(CreateOrder(response: _response));
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
                    )
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
