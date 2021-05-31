import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/auth/index.dart';
import 'package:food_delivery/src/actions/index.dart';
import 'package:food_delivery/src/actions/orders/index.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/mixin/dialog_mixin.dart';

class SelectAddressItemWidget extends StatefulWidget  {
  const SelectAddressItemWidget({required AddressPoint address, bool hasDeleteOnTrailing = true})
      : _address = address,
        _hasDeleteOnTrailing = hasDeleteOnTrailing;

  final AddressPoint _address;
  final bool _hasDeleteOnTrailing;

  @override
  _SelectAddressItemWidgetState createState() => _SelectAddressItemWidgetState();
}

class _SelectAddressItemWidgetState extends State<SelectAddressItemWidget> with DialogMixin{
  void _response(AppAction action, BuildContext context) {
    if (action is SetDefaultAddressError) {
      showErrorDialog(context, 'Server Error', action.error);
    } else if (action is SetDefaultAddressSuccessful) {
      StoreProvider.of<AppState>(context).dispatch(UpdateOrderInfo(address: widget._address));
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '${widget._address.contactName}',
        style: TextStyle(
          color: Theme.of(context).accentColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(('${widget._address.contactPhone}') + (' ${widget._address.address}')),
      onTap: () {
        StoreProvider.of<AppState>(context).dispatch(UpdateOrderInfo(address: widget._address));
        Navigator.pop(context);
      },
      onLongPress: () {
        StoreProvider.of<AppState>(context)
            .dispatch(SetDefaultAddress(address: widget._address, response: (AppAction action) => _response(action, context)));
      },
      trailing: !widget._hasDeleteOnTrailing
          ? null
          : IconButton(
              onPressed: () {
                StoreProvider.of<AppState>(context).dispatch(UpdateAddresses(remove: widget._address));
              },
              icon: const Icon(
                Icons.delete_outline,
                color: Colors.red,
              ),
            ),
    );
  }
}
