import 'package:flutter/material.dart';
import 'package:food_delivery/app_theme.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/cart/delivery_details_widgets/address_widget/select_address_item_widget.dart';

class SelectAddressItemDefaultWidget extends StatelessWidget {

  const SelectAddressItemDefaultWidget({required AddressPoint address}): _address=address;

  final AddressPoint _address;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Theme.of(context).primaryColor),
            color: kColor,
          ),
          child: SelectAddressItemWidget(address: _address,hasDeleteOnTrailing: false),
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
}
