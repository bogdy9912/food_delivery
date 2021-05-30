import 'package:flutter/material.dart';

class AddAdressPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  TextButton(
                    onPressed: () {setState(() {
                      addingMode = false;
                      selectingMode = true;
                    });},
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
                            ..contactName = _name
                            ..contactPhone = _telephone
                            ..address = _address
                            ..city = _city;
                        });
                        StoreProvider.of<AppState>(context)
                            .dispatch(UpdateAddresses(uid: currentUser!.uid, add: add));
                        StoreProvider.of<AppState>(context).dispatch(UpdateOrderInfo(address: add));
                        Navigator.pop(context);
                      }
                    },
                    child: const Text('SALVEAZA'),
                  ),
                ],
              ),
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
//                          children: <Widget>[
//                            InkWell(
//                              child: Container(
//                                decoration: BoxDecoration(
//                                  border: Border.all(),
//                                  borderRadius: const BorderRadius.only(
//                                    topLeft: Radius.circular(12),
//                                    bottomLeft: Radius.circular(12),
//                                  ),
//                                ),
//                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//                                child: const Text(
//                                  'Anuleaza',
//                                  style: TextStyle(
//                                    fontSize: 20,
////                          fontWeight: FontWeight.bold,
//                                  ),
//                                ),
//                              ),
//                              onTap: () {
//                                setState(() {
//                                  addingMode = false;
//                                  selectingMode = true;
//                                });
//                              },
//                            ),
//                            InkWell(
//                              child: Container(
//                                decoration: BoxDecoration(
//                                  border: Border.all(color: Colors.amber),
//                                  color: Colors.amber,
//                                  borderRadius: const BorderRadius.only(
//                                    topRight: Radius.circular(12),
//                                    bottomRight: Radius.circular(12),
//                                  ),
//                                ),
//                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//                                child: const Text(
//                                  'Salveaza',
//                                  style: TextStyle(
//                                    color: Colors.brown,
//                                    fontSize: 20,
//                                    fontWeight: FontWeight.bold,
////                          fontWeight: FontWeight.bold,
//                                  ),
//                                ),
//                              ),
//                              onTap: () {
//                                final bool valid = Form.of(context)!.validate();
//                                if (valid) {
//                                  Form.of(context)!.save();
//                                  final DocumentReference ref = FirebaseFirestore.instance.collection('NOT USE').doc();
//                                  final AddressPoint add = AddressPoint((AddressPointBuilder b) {
//                                    b
//                                      ..id = ref.id
//                                      ..contactName = _name
//                                      ..contactPhone = _telephone
//                                      ..address = _address
//                                      ..city = _city;
//                                  });
//                                  StoreProvider.of<AppState>(context)
//                                      .dispatch(UpdateAddresses(uid: currentUser!.uid, add: add));
//                                  StoreProvider.of<AppState>(context).dispatch(UpdateOrderInfo(address: add));
//                                  Navigator.pop(context);
//                                }
//                              },
//                            ),
//                          ],
//                        ),
            ],
          ),
        ),
      ),
    );
  }
}
