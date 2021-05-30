import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/auth/index.dart';
import 'package:food_delivery/src/actions/company/index.dart';
import 'package:food_delivery/src/models/company/index.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/app_routes.dart';

class CompanyItem extends StatelessWidget {
  const CompanyItem({Key? key, required this.company}) : super(key: key);

  final Company company;

  static const String localHolder = 'assets/images/chef_placeholder.jpg';

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
//      padding: EdgeInsets.all(16),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            const Image(
              image: AssetImage(localHolder),
              fit: BoxFit.cover,
              height: 200,
              width: 300,
            ),
            Opacity(
              opacity: 0.3,
              child: Container(
                height: 200,
                width: 300,
                color: Colors.black,
              ),
            ),
            Column(
              children: <Widget>[
                Text(
                  company.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  company.openHour + ' - ' + company.closeHour,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            )
          ],
        ),

      ),
      onTap: () {
        StoreProvider.of<AppState>(context).dispatch(GetMeniu(companyId: company.id));
        StoreProvider.of<AppState>(context).dispatch(const UpdateCart());
        Navigator.pushNamed(context, AppRoutes.meniu, arguments: company);
      },
    );
  }
}
