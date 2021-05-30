import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/auth/index.dart';
import 'package:food_delivery/src/actions/index.dart';
import 'package:food_delivery/src/actions/orders/index.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/app_routes.dart';
import 'package:food_delivery/src/presentations/cart/cart_delivery_details_widget.dart';
import 'package:food_delivery/src/presentations/cart/cart_list_view_widget.dart';
import 'package:food_delivery/src/presentations/mixin/dialog_mixin.dart';

class CartPage extends StatefulWidget {
  const CartPage(this.company);

  final Company? company;

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> with DialogMixin {
  late double total;

  void _response(AppAction action) {
    if (action is CreateOrderError) {
      showErrorDialog(context, 'Server Error', action.error);
    } else {
      StoreProvider.of<AppState>(context).dispatch(const UpdateCart());
      Navigator.popUntil(
        context,
        (Route<dynamic> route) => route.isFirst,
      );
      Navigator.pushReplacementNamed(context, AppRoutes.home);
      StoreProvider.of<AppState>(context).dispatch(const UpdateOrderInfo());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('finalizare comanda'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const CartListViewWidget(),
            CartDeliveryDetailsWidget(response: _response, company: widget.company!),
          ],
        ),
      ),
    );
  }
}
