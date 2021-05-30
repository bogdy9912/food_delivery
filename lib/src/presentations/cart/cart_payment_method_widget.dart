import 'package:flutter/material.dart';
import 'package:food_delivery/app_theme.dart';

class CartPaymentMethodWidget extends StatelessWidget {
  const CartPaymentMethodWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Text(
          'Metoda de plata',
          style: TextStyle(
//                                color: Theme.of(context).accentColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        TextButton(
          child: Row(
            children: const <Widget>[
              Text('Numerar', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400)),
//                                                Icon(Icons.money, color: Colors.green,),
            ],
          ),
          onPressed: () {
            showDialog<AlertDialog>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                      title: const Text('Metoda de plata'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Stack(
                            alignment: AlignmentDirectional.topEnd,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: Theme.of(context).primaryColor),
                                  color: kColor,
                                ),
                                child: const ListTile(
                                  title: Text('Numerar'),
                                  trailing: Icon(
                                    Icons.money,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0, right: 44),
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
                          ),
                          const ListTile(
                            enabled: false,
                            title: Text('Credit Card'),
                            trailing: Icon(Icons.credit_card),
                          ),
                        ],
                      ),
                      actions: <Widget>[
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('EXIT'))
                      ],
                    ));
          },
        ),
      ],
    );
  }
}
