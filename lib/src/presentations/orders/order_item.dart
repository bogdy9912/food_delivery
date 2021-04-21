import 'package:flutter/material.dart';
import 'package:food_delivery/src/containers/company/companies_container.dart';
import 'package:food_delivery/src/models/index.dart';

class OrderItem extends StatelessWidget {
  const OrderItem(this.order);

  final Order order;

  @override
  Widget build(BuildContext context) {
    return CompaniesContainer(
      builder: (BuildContext context, List<Company> companies) => Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
//        border: Border.all(width: 1),
//        color: Colors.red,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              companies.where((Company element) => element.id == order.companyId).toList()[0].name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      const Text(
                        'Total',
                        style: TextStyle(color: Colors.black38),
                      ),
                      Text(order.total.toString()),
                      const Text(
                        'Metoda de plata',
                        style: TextStyle(color: Colors.black38),
                      ),
                      Text(order.methodOfPayment.toString()),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  child: const VerticalDivider(),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      const Text(
                        'Data',
                        style: TextStyle(color: Colors.black38),
                      ),
                      Text(order.date.substring(0,10)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
