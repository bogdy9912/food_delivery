import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/src/actions/index.dart';
import 'package:food_delivery/src/containers/auth/user_container.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/cart/delivery_details_widgets/address_widget/select_address_item_default_widget.dart';
import 'package:food_delivery/src/presentations/cart/delivery_details_widgets/address_widget/select_address_item_widget.dart';

class SelectAddressPage extends StatefulWidget {
  const SelectAddressPage({required Function handler}) : _handler = handler;

  final Function _handler;

  @override
  _SelectAddressPageState createState() => _SelectAddressPageState();
}

class _SelectAddressPageState extends State<SelectAddressPage> {
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
              return SelectAddressItemDefaultWidget(address: address!);
            }
            return SelectAddressItemWidget(address: address!);
          },
        ),
      ),
    );
  }
}
