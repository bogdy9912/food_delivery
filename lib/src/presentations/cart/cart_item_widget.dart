import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/auth/index.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/widgets/cart_button.dart';

class CartItemWidget extends StatelessWidget {
  CartItemWidget(this.item);

  final CartItem item;

  final TextEditingController _mentionsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return InkWell(

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

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
                  Text(
                    '${item.mentions == '' ? 'Nu ai introdus nicio mentiune' : item.mentions} ',
                    maxLines: 2,
                    style: const TextStyle(color: Colors.grey),
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
      ),
        onTap: () {
          showDialog<dynamic>(
            context: context,
            builder: (BuildContext context) {
              _mentionsController.text = item.mentions;
              return AlertDialog(
                title: Text(item.name),
                content: TextField(
                  controller: _mentionsController,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                    hintText: 'Alergeni sau preferinte suplimentare',
                  ),
                  maxLines: 7,
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      StoreProvider.of<AppState>(context)
                          .dispatch(UpdateCartItemMentions(id: item.id, mentions: _mentionsController.text));

                      Navigator.pop(context);
                    },
                    child: const Text('save'),
                  ),
                ],
              );
            },
          );
        }
    );
  }
}
