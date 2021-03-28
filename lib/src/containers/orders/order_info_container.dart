import 'package:food_delivery/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/models/orders/index.dart';
import 'package:redux/redux.dart';

class OrderInfoContainer extends StatelessWidget {
  const OrderInfoContainer({required this.builder});

  final ViewModelBuilder<OrderInfo> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, OrderInfo>(
      builder: builder,
      converter: (Store<AppState> store) => store.state.ordersState.info,
    );
  }
}
