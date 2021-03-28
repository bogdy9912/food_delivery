import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/auth/index.dart';
import 'package:food_delivery/src/containers/auth/user_container.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:food_delivery/src/models/index.dart';

class AddAddressPage extends StatefulWidget {
  const AddAddressPage({Key? key, this.isEditing}) : super(key: key);

  final AddressPoint? isEditing;

  @override
  _AddAddressPageState createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
/*  final TextEditingController _name = TextEditingController();

  final TextEditingController _telephone = TextEditingController();

  final TextEditingController _address = TextEditingController();

  final TextEditingController _city = TextEditingController();

  final TextEditingController _town = TextEditingController();*/

  String? _name;
  String? _telephone;
  String? _address;
  String? _city;
  String? _town;

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
        if (widget.isEditing != null) {
          _name = widget.isEditing!.contactName;
          _telephone = widget.isEditing!.contactPhone;
          _address = widget.isEditing!.address;
          _city = widget.isEditing!.city;
          _town = widget.isEditing!.town;
        } else {
          _name =  user!.lastName + user.firstName;

          _telephone = user.telephone ;
        }
        return Form(
          child: Scaffold(
            appBar: AppBar(
              iconTheme: const IconThemeData(color: Colors.blue),
              title: Text(
                widget.isEditing != null ? 'Edit address' : 'Address',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
              backgroundColor: Colors.white,
              actions: <Widget>[
                Builder(
                  builder: (BuildContext context) => TextButton(
                    child: const Text('SAVE', style: TextStyle(color: Colors.blue)),
                    onPressed: () {
                      final bool valid = Form.of(context)!.validate();
                      if (valid) {
                        Form.of(context)!.save();
                        final AddressPoint add = AddressPoint((AddressPointBuilder b) {
                          b
                            ..contactName = _name
                            ..contactPhone = _telephone
                            ..address = _address
                            ..city = _city
                            ..town = _town;
                        });
                        StoreProvider.of<AppState>(context).dispatch(UpdateAddresses(uid: user!.uid, add: add));
                        Navigator.pop(context);
                      }
                    },
                  ),
                ),
              ],
            ),
            body: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.grey[200],
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Contact person',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 16.0, left: 16.0, right: 16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            TextFormField(
                              initialValue: _name,
                              keyboardType: TextInputType.name,
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return 'Please enter a name';
                                }
                                return null;
                              },
                              onSaved: (String? value) {
                                _name = value;
                              },
                              decoration: const InputDecoration(
                                labelText: 'Nume Prenume',
                              ),
                            ),
                            TextFormField(
                              initialValue: _telephone,
                              keyboardType: TextInputType.phone,
                              validator: (String? value) {
                                if (value!.isEmpty || value.length != 10 || value[0] != '0') {
                                  return 'Please enter a valid number';
                                }
                                return null;
                              },
                              onSaved: (String? value) {
                                _telephone = value;
                              },
                              decoration: const InputDecoration(
                                labelText: 'Telephone',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Address point',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 16.0, left: 16.0, right: 16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            TextFormField(
                              initialValue: _address,
                              keyboardType: TextInputType.streetAddress,
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return 'Please enter an address';
                                }
                                return null;
                              },
                              onSaved: (String? value) {
                                _address = value;
                              },
                              decoration: const InputDecoration(
                                labelText: 'Address',
                              ),
                            ),
                            TextFormField(
                              initialValue: _city,
                              keyboardType: TextInputType.name,
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return 'Please enter a city';
                                }
                                return null;
                              },
                              onSaved: (String? value) {
                                _city = value;
                              },
                              decoration: const InputDecoration(
                                labelText: 'City',
                              ),
                            ),
                            TextFormField(
                              initialValue: _town,
                              keyboardType: TextInputType.name,
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return 'Please enter a town';
                                }
                                return null;
                              },
                              onSaved: (String? value) {
                                _town = value;
                              },
                              decoration: const InputDecoration(
                                labelText: 'Town',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
