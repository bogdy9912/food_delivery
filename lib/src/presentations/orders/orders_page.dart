import 'package:flutter/material.dart';
import 'package:food_delivery/src/containers/orders/orders_container.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/orders/order_item.dart';

class OrdersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OrdersContainer(
      builder: (BuildContext context, List<Order> orders) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: ListView.separated(
          itemCount: orders.length+1,
          padding: const EdgeInsets.all(16),
          separatorBuilder: (BuildContext context, int index) => const Divider(
            color: Colors.black,
          ),
          itemBuilder: (BuildContext context, int index) {
            if (index == 0){
              return const Text('Comenzile \nmele', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700,),);
            }
            return OrderItem(orders[index-1]);
          },
        ),
      ),
    );
  }
}
