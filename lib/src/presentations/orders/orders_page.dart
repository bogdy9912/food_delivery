import 'package:flutter/material.dart';
import 'package:food_delivery/src/containers/orders/orders_container.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/orders/order_item.dart';

class OrdersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OrdersContainer(
      builder:(BuildContext context, List<Order> orders) => Scaffold(
        appBar: AppBar(),
        body: ListView.separated(
            itemCount: orders.length,
            padding: EdgeInsets.all(12),
            separatorBuilder: (context, index) => Divider(
              color: Colors.black,
            ),
            itemBuilder: (BuildContext context, int index) => OrderItem(orders[index])),
      ),
    );
  }
}
