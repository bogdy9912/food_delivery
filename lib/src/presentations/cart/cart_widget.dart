import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/auth/index.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/widgets/cart_button.dart';

class CartWidget extends StatelessWidget {
  const CartWidget(this.item);

  final CartItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '${item.name}',
                  softWrap: true,
                  maxLines: 2,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  child: Text(
                    '${item.mentions ?? 'Nu ai introdus nicio mentiune'} ',
                    maxLines: 2,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  onTap: () {
                    String? _mentions;
                    showDialog<dynamic>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Text(item.name),
                        content: TextFormField(
                          initialValue: item.mentions,
                          keyboardType: TextInputType.multiline,
                          decoration: const InputDecoration(
                            hintText: 'Tap to write',
                          ),
                          maxLines: 7,
                          onChanged: (String value) {
                            _mentions = value;
                          },
                        ),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              StoreProvider.of<AppState>(context)
                                  .dispatch(UpdateCartItemMentions(id: item.id, mentions: _mentions));

                              Navigator.pop(context);
                            },
                            child: const Text('save'),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '${item.price} lei',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              CartButton(item),
            ],
          ),
        ),
      ],
    );
  }
}
