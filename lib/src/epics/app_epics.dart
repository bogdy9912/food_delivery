import 'package:flutter/cupertino.dart';
import 'package:food_delivery/src/data/auth_api.dart';
import 'package:food_delivery/src/epics/auth_epics.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';

class AppEpics {
  AppEpics({@required AuthApi api})
      : assert(api != null),
        _authApi = api;

  final AuthApi _authApi;

  Epic<AppState> get epics => combineEpics(<Epic<AppState>>[
        AuthEpics(api: _authApi).epics,
      ]);
}
