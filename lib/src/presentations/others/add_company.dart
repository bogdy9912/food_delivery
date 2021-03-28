import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/company/index.dart';
import 'package:food_delivery/src/models/index.dart';

class AddCompany extends StatefulWidget {
  const AddCompany({Key? key}) : super(key: key);

  @override
  _AddCompanyState createState() => _AddCompanyState();
}

class _AddCompanyState extends State<AddCompany> {
  final TextEditingController _name = TextEditingController();

  final TextEditingController _rating = TextEditingController();

  final TextEditingController _image = TextEditingController();

  final TextEditingController _openHour = TextEditingController();

  final TextEditingController _closeHour = TextEditingController();

  final TextEditingController _city = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          TextField(
            controller: _name,
            decoration: const InputDecoration(hintText: 'name'),
            textInputAction: TextInputAction.next,
          ),
          TextField(
            controller: _rating,
            decoration: const InputDecoration(hintText: 'rating'),
            textInputAction: TextInputAction.next,
          ),
          TextField(
            controller: _image,
            decoration: const InputDecoration(hintText: 'image'),
            textInputAction: TextInputAction.next,
          ),
          TextField(
            controller: _openHour,
            decoration: const InputDecoration(hintText: 'openHour'),
            textInputAction: TextInputAction.next,
          ),
          TextField(
            controller: _closeHour,
            decoration: const InputDecoration(hintText: 'closeHour'),
            textInputAction: TextInputAction.next,
          ),
          TextField(
            controller: _city,
            decoration: const InputDecoration(hintText: 'city'),
            textInputAction: TextInputAction.next,
          ),
          ElevatedButton(
            onPressed: () {
              print('la');
              StoreProvider.of<AppState>(context).dispatch(CreateCompany(
                name: _name.text,
                rating: double.parse(_rating.text),
                image: _image.text,
                openHour: _openHour.text,
                closeHour: _closeHour.text,
                city: _city.text,
              ));
            },
            child: const Text('create'),
          )
        ],
      ),
    );
  }
}
