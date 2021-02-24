import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/company/index.dart';
import 'package:food_delivery/src/models/company/index.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/app_routes.dart';

class CompanyItem extends StatelessWidget {
  const CompanyItem({Key key, @required this.company}) : super(key: key);

  final Company company;

  static const String localHolder = 'assets/images/chef_placeholder.jpg';

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: <Widget>[
        if (!company.image.contains('https://'))
          Container(
            height: size.height * 0.5,
            width: size.width * 0.8,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              image: DecorationImage(
                image: AssetImage(localHolder),
                fit: BoxFit.cover,
              ),
            ),
          )
        else
        Container(
          child: CachedNetworkImage(
            imageUrl: company.image,
            imageBuilder: (BuildContext context, ImageProvider<Object> imageProvider) => Container(),
            placeholder: (BuildContext context, String url) => Container(
              height: size.height * 0.5,
              width: size.width * 0.8,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                image: DecorationImage(
                  image: AssetImage(localHolder),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            errorWidget: (BuildContext context, String url, dynamic error) => Container(
              height: size.height * 0.5,
              width: size.width * 0.8,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                image: DecorationImage(
                  image: AssetImage(localHolder),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          child: Container(
            height: size.height * 0.5,
            width: size.width * 0.8,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Colors.transparent, Colors.black],
              ),
            ),
          ),
          onTap: () {
            StoreProvider.of<AppState>(context).dispatch(GetMeniu(companyId: company.id));
            Navigator.pushNamed(context, AppRoutes.meniu, arguments: company);
          },
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(company.name, style: const TextStyle(color: Colors.white)),
              Text('rating: ${company.rating}', style: const TextStyle(color: Colors.white)),
              Text(company.openHour + '-' + company.closeHour, style: const TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ],
    );
  }
}
