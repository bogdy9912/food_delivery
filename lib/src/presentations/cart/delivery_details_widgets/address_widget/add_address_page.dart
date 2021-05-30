import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/auth/index.dart';
import 'package:food_delivery/src/actions/orders/index.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:food_delivery/src/models/index.dart';

class AddAdressPage extends StatefulWidget {
  const AddAdressPage({required Function handler, required AppUser currentUser})
      : _handler = handler,
        _currentUser = currentUser;

  final Function _handler;
  final AppUser _currentUser;

  @override
  _AddAdressPageState createState() => _AddAdressPageState();
}

class _AddAdressPageState extends State<AddAdressPage> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _telephone = TextEditingController();
  final TextEditingController _address = TextEditingController();

  final String? _city = 'Calarasi';

  @override
  void initState() {
    _name.text = widget._currentUser.lastName + ' ' + widget._currentUser.firstName;
    _telephone.text = widget._currentUser.telephone;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Builder(
        builder: (BuildContext context) => SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: const Color(0xffecebeb)),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: TextFormField(
                  controller: _name,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Theme.of(context).accentColor, fontWeight: FontWeight.bold),
                    labelText: 'Persoana contact',
                    hintText: 'Nume Prenume',
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
                ),
              ),
              const Divider(color: Colors.transparent),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: const Color(0xffecebeb)),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: TextFormField(
                  controller: _telephone,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Theme.of(context).accentColor, fontWeight: FontWeight.bold),
                    labelText: 'Telefon',
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
                ),
              ),
              const Divider(color: Colors.transparent),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: const Color(0xffecebeb)),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: TextFormField(
                  controller: _address,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Theme.of(context).accentColor, fontWeight: FontWeight.bold),
                    labelText: 'Adresa livrare',
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
                ),
              ),
              const Divider(color: Colors.transparent),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: const Color(0xffecebeb)),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: TextFormField(
                  initialValue: _city,
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),
                    labelText: 'Oras',
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
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
                ),
              ),
              const Divider(color: Colors.transparent),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      widget._handler(true);
                    },
                    child: const Text('ANULEAZA'),
                  ),
                  TextButton(
                    onPressed: () {
                      final bool valid = Form.of(context)!.validate();
                      if (valid) {
                        Form.of(context)!.save();
                        final DocumentReference ref = FirebaseFirestore.instance.collection('NOT USE').doc();
                        final AddressPoint add = AddressPoint((AddressPointBuilder b) {
                          b
                            ..id = ref.id
                            ..contactName = _name.text
                            ..contactPhone = _telephone.text
                            ..address = _address.text
                            ..city = _city;
                        });
                        StoreProvider.of<AppState>(context)
                            .dispatch(UpdateAddresses(uid: widget._currentUser.uid, add: add));
                        StoreProvider.of<AppState>(context).dispatch(UpdateOrderInfo(address: add));
                        Navigator.pop(context);
                      }
                    },
                    child: const Text('SALVEAZA'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
