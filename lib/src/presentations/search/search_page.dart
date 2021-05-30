import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/company/index.dart';
import 'package:food_delivery/src/containers/company/search_result_container.dart';
import 'package:food_delivery/src/models/index.dart';

import 'package:food_delivery/src/presentations/home/company_item.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: TextField(
          autofocus: true,
//          style: const TextStyle(color: Colors.white, fontSize: 18),
          decoration: const InputDecoration(
              hintText: 'Cauta',
//              focusColor: Colors.white,
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide.none)),
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.done,
          onChanged: (String value) {
            StoreProvider.of<AppState>(context).dispatch(SearchCompanies(value.toLowerCase()));
          },
        ),
      ),
      body: SearchResultContainer(
        builder: (BuildContext context, List<Company> companies) {
          if (companies.isEmpty)
            return const Center(child: Text('Nu am gasit nimic'));
          return ListView.builder(
            itemCount: companies.length,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CompanyItem(company: companies[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
