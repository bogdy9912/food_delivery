import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/models/company/index.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:redux/redux.dart';

class MeniuContainer extends StatelessWidget {
  const MeniuContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<Meniu> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Meniu>(
      builder: builder,
      converter: (Store<AppState> store) => store.state.companyState.meniu,
    );
  }
}
