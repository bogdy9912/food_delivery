import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/orders/index.dart';
import 'package:food_delivery/src/containers/auth/cart_container.dart';
import 'package:food_delivery/src/containers/auth/user_container.dart';
import 'package:food_delivery/src/containers/company/meniu_container.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/app_routes.dart';

class FloatingButtonCartWithBadge extends StatelessWidget {
  const FloatingButtonCartWithBadge(this.company);

  final Company company;
  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? currentUser) => MeniuContainer(
        builder:(BuildContext context, Meniu? meniu) => CartContainer(
          builder:(BuildContext context, Cart? cart) => Stack(
            alignment: AlignmentDirectional.topEnd,
            children: <Widget>[
              FloatingActionButton(
                child: Icon(cart == null ? Icons.shopping_basket_outlined : Icons.shopping_basket),
                onPressed: () {
                  StoreProvider.of<AppState>(context).dispatch(UpdateOrderInfo(companyId: company.id));
                  StoreProvider.of<AppState>(context)
                      .dispatch(UpdateOrderInfo(address: currentUser!.defaultAddress));
//                      StoreProvider.of<AppState>(context)
//                          .dispatch(UpdateOrderInfo(methodOfPayment: currentUser.defaultPaymentMethod));
                  Navigator.pushNamed(context, AppRoutes.cart2, arguments: company);
                },
              ),
              if (cart != null && cart.totalProducts > 0)
                Container(
                  child: Text(
                    '${cart.totalProducts}',
                    style: const TextStyle(color: Colors.white),
                  ),
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
