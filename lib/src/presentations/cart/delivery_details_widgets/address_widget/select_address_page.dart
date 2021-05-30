import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/auth/index.dart';
import 'package:food_delivery/src/actions/index.dart';
import 'package:food_delivery/src/actions/orders/index.dart';
import 'package:food_delivery/src/containers/auth/user_container.dart';
import 'package:food_delivery/src/models/index.dart';

import '../../../../../app_theme.dart';

class SelectAddressPage extends StatefulWidget {
  const SelectAddressPage({required Function handler}): _handler = handler;

  final Function _handler;


  @override
  _SelectAddressPageState createState() => _SelectAddressPageState();
}

class _SelectAddressPageState extends State<SelectAddressPage> {
  bool selectingMode = true;
  bool addingMode = false;
  bool editingMode = false;


  void _response(AppAction action) {}

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? currentUser) => SizedBox(
        height: 400,
        width: 200,
        child: ListView.builder(
                itemCount: currentUser!.addresses.length + 2,
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return OutlinedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Icon(Icons.add_circle_outline),
                          Text('Adauga'),
                        ],
                      ),
                      onPressed: () {
//                      Navigator.pushNamed(context, AppRoutes.addAddressPage);
                        widget._handler(false);

                      },
                    );
                  }
                  if (index == currentUser.addresses.length + 1) {
                    return TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('EXIT'));
                  }
                  final AddressPoint? address = currentUser.addresses.values.toList()[index - 1];
                  if (address == currentUser.defaultAddress) {
                    return Stack(
                      alignment: AlignmentDirectional.topEnd,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Theme.of(context).primaryColor),
                            color: kColor,
                          ),
                          child: ListTile(
                            title: Text(
                              '${address?.contactName}',
                              style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(('${address?.contactPhone}') + (' ${address?.address}')),
                            onTap: () {
                              StoreProvider.of<AppState>(context, listen: false)
                                  .dispatch(UpdateOrderInfo(address: address));
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(color: Theme.of(context).primaryColor),
                            ),
                            child: const Text(
                              'default',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                  return ListTile(
                    title: Text(
                      '${address?.contactName}',
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(('${address?.contactPhone}') + (' ${address?.address}')),
                    onTap: () {
                      StoreProvider.of<AppState>(context).dispatch(UpdateOrderInfo(address: address));
                      Navigator.pop(context);
                    },
                    onLongPress: () {
                      setState(() {
                        StoreProvider.of<AppState>(context)
                            .dispatch(SetDefaultAddress(address: address!, response: _response));
                        StoreProvider.of<AppState>(context).dispatch(UpdateOrderInfo(address: address));
                        Navigator.pop(context);
                      });
                    },
                    trailing: IconButton(
                      onPressed: () {
                        StoreProvider.of<AppState>(context)
                            .dispatch(UpdateAddresses(uid: currentUser.uid, remove: address));
                      },
                      icon: const Icon(
                        Icons.delete_outline,
                        color: Colors.red,
                      ),
                    ),
                  );
                },
              ),

      ),
    );
  }
}
