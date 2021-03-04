import 'package:flutter/material.dart';

class PersonalPickupTab extends StatefulWidget {
  const PersonalPickupTab({Key key, this.function}): super(key: key);

  final Function function;
  @override
  _PersonalPickupTabState createState() => _PersonalPickupTabState();
}

class _PersonalPickupTabState extends State<PersonalPickupTab> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text('Daca bifati optiunea de mai jos, o sa primiti o instiintare pe mail cu durata aproximativa'),
        const Placeholder(
          fallbackHeight: 100,
          fallbackWidth: 100,
        ),
        ListTile(
          leading: IconButton(
            icon: Icon(
              _isChecked == false ? Icons.check_box_outline_blank : Icons.check_box,
              color: _isChecked == false ? Colors.grey : Colors.green,
            ),
            onPressed: () {
              setState(() {
                _isChecked = !_isChecked;
                widget.function();
              });
            },
          ),
          title: const Text('Sunt de acord sa preiau produsele singur de la locatia de mai sus'),
        ),
      ],
    );
  }
}
