import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/company/index.dart';
import 'package:food_delivery/src/containers/company/companies_container.dart';
import 'package:food_delivery/src/models/company/index.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/app_routes.dart';
import 'package:food_delivery/src/presentations/home/app_drawer.dart';
import 'package:food_delivery/src/presentations/home/company_item.dart';

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    StoreProvider.of<AppState>(context, listen: false).dispatch(const GetCompanies());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calarasi', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),),
        centerTitle: true,
        elevation: 0,
//        backgroundColor: Colors.transparent,
      ),
      drawer: Drawer(
        child: AppDrawer(),
      ),
      body: CompaniesContainer(
        builder: (BuildContext context, List<Company> companies) {
          return Column(
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.search);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:16.0, vertical: 8),
                  child: Material(
                    color: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.search,
                            color: Theme.of(context).primaryColor,
                          ),
                          const SizedBox(width: 16.0),
                          Text(
                            'Cautare',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: companies.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: CompanyItem(company: companies[index]),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
