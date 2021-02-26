import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:redux/redux.dart';

class StoreContainer extends StatelessWidget {
  const StoreContainer({@required this.builder});

  final ViewModelBuilder<AuthState> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AuthState>(
      converter: (Store<AppState> store) => store.state.auth,
      builder: builder,
    );
  }
}