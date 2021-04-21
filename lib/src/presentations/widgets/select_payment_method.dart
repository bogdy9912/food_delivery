import 'package:flutter/material.dart';

class SelectPaymentMethod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 200,
      child: Column(children: <Widget>[
        TextButton(onPressed: (){

        }, child: const Text('Cash'),),
        TextButton(onPressed: (){}, child: const Text('Credit Card'),),
      ],),
    );
  }
}
