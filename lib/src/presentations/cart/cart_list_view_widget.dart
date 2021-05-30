import 'dart:math';

import 'package:flutter/material.dart';
import 'package:food_delivery/src/containers/auth/cart_container.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/cart/cart_widget.dart';

class CartListViewWidget extends StatelessWidget {
  const CartListViewWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: max(
          MediaQuery.of(context).size.height -
              AppBar().preferredSize.height -
              MediaQuery.of(context).padding.bottom -
              MediaQuery.of(context).padding.top -
              360,
          200),
//                    height: 200,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      clipBehavior: Clip.hardEdge,
      child: CartContainer(
        builder: (BuildContext context, Cart? cart) => ListView.separated(
          separatorBuilder: (BuildContext context, int index) => const Divider(
            height: 1,
            color: Colors.white,
          ),
          itemCount: cart?.items.length ?? 0,
          itemBuilder: (BuildContext context, int index) {
            final CartItem? item = cart?.items[index];
            if (item == null) {
              return Container();
            }

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CartWidget(item),
            );
          },
        ),
      ),
    );
  }
}
