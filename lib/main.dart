import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/app_theme.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/app_routes.dart';
import 'package:food_delivery/src/presentations/mixin/init_mixin.dart';
import 'package:redux/redux.dart';

void main() {
  runApp(FoodDelivery());
}

class FoodDelivery extends StatefulWidget {
  @override
  _FoodDeliveryState createState() => _FoodDeliveryState();
}

class _FoodDeliveryState extends State<FoodDelivery> with InitMixin<FoodDelivery> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Store<AppState>>(
        future: future,
        builder: (BuildContext context, AsyncSnapshot<Store<AppState>> snapshot) {
          if (snapshot.hasData) {
            final Store<AppState> store = snapshot.data!;
            return StoreProvider<AppState>(
              store: store,
              child: MaterialApp(
                theme: buildThemeData(context),
                routes: AppRoutes.routes,
              ),
            );
          }
          if (snapshot.hasError) {
            throw snapshot.error!;
          }
          return MaterialApp(
            theme: ThemeData.dark(),
            home: const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            ),
          );
        });
  }
}
