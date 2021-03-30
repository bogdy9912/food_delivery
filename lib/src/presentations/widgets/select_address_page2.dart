import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/app_routes.dart';

import '../../../app_theme.dart';

class SelectAddressPage2 extends StatelessWidget {
  const SelectAddressPage2({required this.currentUser});

  final AppUser currentUser;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 200,
      child: ListView.builder(
        itemCount: currentUser.addresses.length + 1,
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
                Navigator.pushNamed(context, AppRoutes.addAddressPage);
              },
            );
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
          );
        },
      ),
    );
  }
}
