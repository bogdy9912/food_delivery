import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/orders/index.dart';
import 'package:food_delivery/src/containers/auth/cart_container.dart';
import 'package:food_delivery/src/containers/auth/user_container.dart';
import 'package:food_delivery/src/containers/company/companies_container.dart';
import 'package:food_delivery/src/containers/orders/order_info_container.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/app_routes.dart';
import 'package:food_delivery/src/presentations/widgets/next_button_widget.dart';

class PersonalPickupTab extends StatefulWidget {
  const PersonalPickupTab({Key key, this.company}): super(key: key);

  final Company company;
  @override
  _PersonalPickupTabState createState() => _PersonalPickupTabState();
}

class _PersonalPickupTabState extends State<PersonalPickupTab> {
  bool isPressed = false;
  final TextEditingController _name = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _information = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser currentUser) {
        _name.text = currentUser.lastName + ' ' + currentUser.firstName;
        _phone.text = currentUser.telephone;
        return CompaniesContainer(
          builder: (BuildContext context, List<Company> companies) {
            return CartContainer(
              builder: (BuildContext context, Cart cart) {
                return OrderInfoContainer(
                  builder: (BuildContext context, OrderInfo info) {

                    return Column(
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Informatii de contact',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  TextFormField(
                                    controller: _name,
                                    decoration: const InputDecoration(labelText: 'Nume Prenume'),
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.name,
                                    validator: (String value) {
                                      if (value.isEmpty) {
                                        return 'Te rugam sa introduci o persoana de contact';
                                      }
                                      return null;
                                    },
                                  ),
                                  TextFormField(
                                    controller: _phone,
                                    decoration: const InputDecoration(labelText: 'Telefon'),
                                    textInputAction: TextInputAction.done,
                                    keyboardType: TextInputType.phone,
                                    validator: (String value) {
                                      if (value.length != 10 || double.tryParse(value) == null) {
                                        return 'Te rugam sa introduci un numar valid';
                                      }
                                      return null;
                                    },
                                  ),
                                  TextField(
                                    controller: _information,
                                    maxLines: 5,
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
                                                children: const <Widget>[
                                                   Text(
                                                    'Livrare:',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),

                                                     Text(
                                                      'GRATIS',
                                                      style: TextStyle(
                                                        color: Colors.green,
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
                                                  '${cart.totalAmount} lei',
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
                                                  .dispatch(UpdateOrderInfo(instructions: _information.text ));
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
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}
