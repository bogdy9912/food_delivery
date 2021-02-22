import 'package:flutter/cupertino.dart';
import 'package:food_delivery/src/data/auth_api.dart';
import 'package:food_delivery/src/data/company_api.dart';
import 'package:food_delivery/src/epics/auth_epics.dart';
import 'package:food_delivery/src/epics/company_epics.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';

class AppEpics {
  AppEpics({@required AuthApi api,@required CompanyApi companyApi,})
      : assert(api != null),
       assert(companyApi != null),
        _companyApi = companyApi,
        _authApi = api;

  final AuthApi _authApi;
  final CompanyApi _companyApi;

  Epic<AppState> get epics => combineEpics(<Epic<AppState>>[
        AuthEpics(api: _authApi).epics,
        CompanyEpics(api: _companyApi).epics,
      ]);
}
