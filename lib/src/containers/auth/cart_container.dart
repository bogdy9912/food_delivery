import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:redux/redux.dart';

class CartContainer extends StatelessWidget {
  const CartContainer({required this.builder});

  final ViewModelBuilder<Cart?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Cart?>(
      builder: builder,
      converter: (Store<AppState> store) => store.state.auth.cart,
    );
  }
}
