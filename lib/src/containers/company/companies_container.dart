import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/models/company/index.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:redux/redux.dart';

class CompaniesContainer extends StatelessWidget {
  const CompaniesContainer({Key key, this.builder}) : super(key: key);

  final ViewModelBuilder<List<Company>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Company>>(
      builder: builder,
      converter: (Store<AppState> store) => store.state.companyState.companies.toList(),
    );
  }
}
