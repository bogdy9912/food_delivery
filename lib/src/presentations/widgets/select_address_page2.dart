import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/auth/index.dart';
import 'package:food_delivery/src/actions/index.dart';
import 'package:food_delivery/src/actions/orders/index.dart';
import 'package:food_delivery/src/models/index.dart';

import '../../../app_theme.dart';

class SelectAddressPage2 extends StatefulWidget {
  const SelectAddressPage2({required this.currentUser});

  final AppUser currentUser;

  @override
  _SelectAddressPage2State createState() => _SelectAddressPage2State();
}

class _SelectAddressPage2State extends State<SelectAddressPage2> {
  bool selectingMode = true;
  bool addingMode = false;
  bool edditingMode = false;

  String? _name;
  String? _telephone;

  String? _address;
  String? _city = 'Calarasi';

  void _response(AppAction action) {}

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 200,
      child: selectingMode
          ? ListView.builder(
              itemCount: widget.currentUser.addresses.length + 2,
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
                      setState(() {
                        addingMode = true;
                        selectingMode = false;
                        _name = widget.currentUser.lastName + ' ' + widget.currentUser.firstName;
                        _telephone = widget.currentUser.telephone;
                      });
                    },
                  );
                }
                if (index == widget.currentUser.addresses.length + 1) {
                  return TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('EXIT'));
                }
                final AddressPoint? address = widget.currentUser.addresses.values.toList()[index - 1];
                if (address == widget.currentUser.defaultAddress) {
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
                            StoreProvider.of<AppState>(context).dispatch(UpdateOrderInfo(address: address));
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
                return Dismissible(
                  key: UniqueKey(),
                  background: Container(
                    color: Colors.red,
                    child: const Icon(Icons.delete_outline_rounded),
                  ),
                  onDismissed: (DismissDirection direction) {
                    setState(() {
                      StoreProvider.of<AppState>(context, listen: false)
                          .dispatch(UpdateAddresses(uid: widget.currentUser.uid, remove: address));
                    });
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Adresa stearsa')));
                  },
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
                  ),
                );
              },
            )
          : Form(
              child: Builder(
                builder: (BuildContext context) => SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(12), color: const Color(0xffecebeb)),
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: TextFormField(
                          initialValue: _name,
                          decoration: InputDecoration(
                            labelStyle: TextStyle(color: Theme.of(context).accentColor, fontWeight: FontWeight.bold),
                            labelText: 'Persoana contact',
                            hintText: 'Nume Prenume',
//                      fillColor: Color(0xffecebeb),
//                      filled: true,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                          ),
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Acest camp este obligatoriu';
                            }
                            return null;
                          },
                          onSaved: (String? value) {
                            _name = value;
                          },
                        ),
                      ),
                      const Divider(color: Colors.transparent),
                      Container(
                        decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(12), color: const Color(0xffecebeb)),
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: TextFormField(
                          initialValue: _telephone,
                          decoration: InputDecoration(
                            labelStyle: TextStyle(color: Theme.of(context).accentColor, fontWeight: FontWeight.bold),
                            labelText: 'Telefon',
                            hintText: '',
//                      fillColor: Color(0xffecebeb),
//                    fillColor: Color(0xffe5e5e5),
//                      filled: true,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                          ),
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                          validator: (String? value) {
                            if (value == null || value.isEmpty || value.length != 10) {
                              return 'Numar invalid';
                            }
                            return null;
                          },
                          onSaved: (String? value) {
                            _telephone = value;
                          },
                        ),
                      ),
                      const Divider(color: Colors.transparent),
                      Container(
                        decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(12), color: const Color(0xffecebeb)),
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: TextFormField(
                          initialValue: _address,
                          decoration: InputDecoration(
                            labelStyle: TextStyle(color: Theme.of(context).accentColor, fontWeight: FontWeight.bold),
                            labelText: 'Adresa livrare',
                            hintText: '',
//                      fillColor: Color(0xffecebeb),
//                    fillColor: Color(0xffe5e5e5),
//                      filled: true,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                          ),
                          maxLines: 2,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Adresa invalida';
                            }
                            return null;
                          },
                          onSaved: (String? value) {
                            _address = value;
                          },
                        ),
                      ),
                      const Divider(color: Colors.transparent),
                      Container(
                        decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(12), color: const Color(0xffecebeb)),
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: TextFormField(
                          initialValue: _city,
                          decoration: const InputDecoration(
                            labelStyle: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),
                            labelText: 'Oras',
                            hintText: '',
//                      fillColor: Color(0xffecebeb),
//                    fillColor: Color(0xffe5e5e5),
//                      filled: true,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
//                        enabled: false,
                          ),
                          enabled: false,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Oras invalid';
                            }
                            return null;
                          },
                          onSaved: (String? value) {
                            _city = value;
                          },
                        ),
                      ),
                      const Divider(color: Colors.transparent),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  bottomLeft: Radius.circular(12),
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                              child: const Text(
                                'Anuleaza',
                                style: TextStyle(
                                  fontSize: 20,
//                          fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                addingMode = false;
                                selectingMode = true;
                              });
                            },
                          ),
                          InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.amber),
                                color: Colors.amber,
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(12),
                                  bottomRight: Radius.circular(12),
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                              child: const Text(
                                'Salveaza',
                                style: TextStyle(
                                  color: Colors.brown,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
//                          fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            onTap: () {
                              final bool valid = Form.of(context)!.validate();
                              if (valid) {
                                Form.of(context)!.save();
                                final DocumentReference ref = FirebaseFirestore.instance.collection('NOT USE').doc();
                                final AddressPoint add = AddressPoint((AddressPointBuilder b) {
                                  b
                                    ..id = ref.id
                                    ..contactName = _name
                                    ..contactPhone = _telephone
                                    ..address = _address
                                    ..city = _city;
                                });
                                StoreProvider.of<AppState>(context)
                                    .dispatch(UpdateAddresses(uid: widget.currentUser.uid, add: add));
                                StoreProvider.of<AppState>(context).dispatch(UpdateOrderInfo(address: add));
                                Navigator.pop(context);
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
    );
  }
}
