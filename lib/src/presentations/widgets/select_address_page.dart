
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/orders/index.dart';
import 'package:food_delivery/src/containers/auth/user_container.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/app_routes.dart';

class SelectAddressPage extends StatelessWidget {
  const SelectAddressPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser user) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(color: Colors.blue),
            title: const Text(
              'Adrese de livrare',
              style: TextStyle(color: Colors.black),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () {},
                child: const Text(
                  'SAVE',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  title: const Text(
                    'ADD A NEW ADDRESS',
                    style: TextStyle(color: Colors.blue),
                  ),
                  leading: const Icon(
                    Icons.add,
                    color: Colors.blue,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.addAddressPage);
                  },
                ),
                const Divider(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
                  child: Text(
                    'Address points',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: user.addresses.length,
                    itemBuilder: (BuildContext context, int index) {
                      final AddressPoint address = user.addresses.values.toList()[index];
                      return ListTile(
                        title: Text('${address.contactName} - ${address.contactPhone}'),
                        subtitle: Text('${address.address}, ${address.city}, ${address.town}'),
                        trailing: IconButton(
                          icon: const Icon(Icons.more_vert),
                          onPressed: () {},
                        ),
                        leading: const Icon(Icons.radio_button_checked),
                        onTap: () {
                          StoreProvider.of<AppState>(context).dispatch(UpdateOrderInfo(address: address));
                          Navigator.pop(context);
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
