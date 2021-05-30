import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/app_theme.dart';
import 'package:food_delivery/src/actions/auth/index.dart';
import 'package:food_delivery/src/actions/index.dart';
import 'package:food_delivery/src/actions/orders/index.dart';
import 'package:food_delivery/src/containers/auth/cart_container.dart';
import 'package:food_delivery/src/containers/auth/user_container.dart';
import 'package:food_delivery/src/containers/company/companies_container.dart';
import 'package:food_delivery/src/containers/orders/order_info_container.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/app_routes.dart';
import 'package:food_delivery/src/presentations/cart/cart_list_view_widget.dart';
import 'package:food_delivery/src/presentations/cart/cart_payment_method_widget.dart';
import 'package:food_delivery/src/presentations/cart/delivery_address_widget.dart';
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
    return OrderInfoContainer(
      builder: (BuildContext context, OrderInfo info) {
        return CompaniesContainer(
          builder: (BuildContext context, List<Company> companies) {
//            final Company? company = companies.where((Company element) => element.id == info.companyId).first;
            return UserContainer(
              builder: (BuildContext context, AppUser? currentUser) => CartContainer(
                builder: (BuildContext context, Cart? cart) {
                  if ((cart?.totalAmount ?? 0) >= widget.company!.deliveryFeeThreshold!) {
                    total = cart!.totalAmount;
                  } else {
                    total = (cart?.totalAmount ?? 0) + widget.company!.deliveryFee!;
                  }
                  StoreProvider.of<AppState>(context).dispatch(UpdateOrderInfo(products: cart?.items));
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
                          Container(
                            color: Colors.white,
                            height: 360,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: DeliveryAddressWidget(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                  child: Column(
                                    children: <Widget>[
                                      const CartPaymnetMethodWidget(),
                                      const Divider(),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8, bottom: 6.0, right: 4),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            const Text(
                                              'Comanda',
                                              style: TextStyle(
                                                color: Colors.black54,
                                              ),
                                            ),
                                            Text(
                                              '${cart?.totalAmount ?? 0} lei',
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 6, bottom: 8.0, right: 4),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            const Text(
                                              'Livrare',
                                              style: TextStyle(
                                                color: Colors.black54,
                                              ),
                                            ),
                                            if ((cart?.totalAmount ?? 0) < widget.company!.deliveryFeeThreshold!)
                                              Text(
                                                '${widget.company!.deliveryFee} lei',
                                              )
                                            else
                                              const Text(
                                                'GRATIS',
                                                style: TextStyle(color: Colors.green, fontWeight: FontWeight.w400),
                                              ),
                                          ],
                                        ),
                                      ),
                                      const Divider(),
                                    ],
                                  ),
                                ),
                                ListTile(
                                  title: const Text(
                                    'Total',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  trailing: Text(
                                    '$total lei',
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16),
                                  child: ElevatedButton(
                                    child: Container(
                                      width: double.infinity,
                                      height: 50,
                                      child: const Center(child: Text('Finalizare comanda')),
                                    ),
                                    onPressed: info.address?.address != null && info.products.isNotEmpty
                                        ? () {
                                            if (info.address?.address != null && info.products.isNotEmpty) {
                                              print('face comanda');
                                              StoreProvider.of<AppState>(context)
                                                  .dispatch(UpdateOrderInfo(total: total));

                                              StoreProvider.of<AppState>(context)
                                                  .dispatch(UpdateOrderInfo(companyId: widget.company!.id));
                                              StoreProvider.of<AppState>(context)
                                                  .dispatch(const UpdateOrderInfo(methodOfPayment: PaymentMethod.cash));
                                              StoreProvider.of<AppState>(context)
                                                  .dispatch(CreateOrder(response: _response));
                                            } else
                                              print('nu face comanda');
                                          }
                                        : null,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
