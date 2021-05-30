import 'package:flutter/material.dart';
import 'package:food_delivery/src/containers/orders/order_info_container.dart';
import 'package:food_delivery/src/models/orders/index.dart';
import 'package:food_delivery/src/presentations/cart/delivery_details_widgets/address_widget/address_handling_widget.dart';


class DeliveryAddressWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OrderInfoContainer(
      builder:(BuildContext context, OrderInfo info) => ListTile(
        title: const Text(
          'Adresa de livrare',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: TextButton(
          child: const Text('Schimba'),
          onPressed: () {
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
                content: const AddressHandlingWidget(),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
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
            ],
          ),
        ),
      ),
    );
  }
}
