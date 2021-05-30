import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/index.dart';
import 'package:food_delivery/src/actions/orders/index.dart';
import 'package:food_delivery/src/containers/orders/order_info_container.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/cart/cart_amount_widget.dart';
import 'package:food_delivery/src/presentations/cart/cart_delivery_price.dart';
import 'package:food_delivery/src/presentations/cart/cart_payment_method_widget.dart';
import 'package:food_delivery/src/presentations/cart/cart_total_widget.dart';
import 'package:food_delivery/src/presentations/cart/delivery_address_widget.dart';

class CartDeliveryDetailsWidget extends StatefulWidget {
  const CartDeliveryDetailsWidget({required Function(AppAction) response, required Company company})
      : _response = response,
        _company = company;

  final Function(AppAction) _response;
  final Company _company;

  @override
  _CartDeliveryDetailsWidgetState createState() => _CartDeliveryDetailsWidgetState();
}

class _CartDeliveryDetailsWidgetState extends State<CartDeliveryDetailsWidget> {
  double totalAmount = 0;

  void setTotal(double total) {
    totalAmount=total;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
                const CartPaymentMethodWidget(),
                const Divider(),
                const Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 6.0, right: 4),
                  child: CartAmountWidget(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6, bottom: 8.0, right: 4),
                  child: CartDeliveryPrice(company: widget._company),
                ),
                const Divider(),
              ],
            ),
          ),
          CartTotalWidget(company: widget._company,setTotal: setTotal),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16),
            child: OrderInfoContainer(
              builder: (BuildContext context, OrderInfo info) => ElevatedButton(
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: const Center(child: Text('Finalizare comanda')),
                ),
                onPressed: info.address?.address != null && info.products.isNotEmpty
                    ? () {
                        if (info.address?.address != null && info.products.isNotEmpty) {
                          print('face comanda');
                          StoreProvider.of<AppState>(context).dispatch(UpdateOrderInfo(total: totalAmount));
                          StoreProvider.of<AppState>(context).dispatch(UpdateOrderInfo(companyId: widget._company.id));
                          StoreProvider.of<AppState>(context)
                              .dispatch(const UpdateOrderInfo(methodOfPayment: PaymentMethod.cash));
                          StoreProvider.of<AppState>(context).dispatch(CreateOrder(response: widget._response));
                        } else
                          print('nu face comanda');
                      }
                    : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
