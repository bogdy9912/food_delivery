import 'package:flutter/material.dart';
import 'package:food_delivery/src/containers/auth/user_container.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:food_delivery/src/presentations/cart/delivery_details_widgets/address_widget/add_address_page.dart';
import 'package:food_delivery/src/presentations/cart/delivery_details_widgets/address_widget/select_address_page.dart';

class AddressHandlingWidget extends StatefulWidget {
  const AddressHandlingWidget();

  @override
  _AddressHandlingWidgetState createState() => _AddressHandlingWidgetState();
}

class _AddressHandlingWidgetState extends State<AddressHandlingWidget> {
  bool handle = true;

  void setHandle(bool newHandler) {
    setState(() {
      handle = newHandler;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (handle) {
      return SelectAddressPage(handler: setHandle);
    }
    return UserContainer(
      builder: (BuildContext context, AppUser? currentUser) => AddAdressPage(
        handler: setHandle,
        currentUser: currentUser!,
      ),
    );
  }
}
