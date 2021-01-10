import 'package:food_delivery/src/actions/auth/index.dart';
import 'package:food_delivery/src/actions/index.dart';
import 'package:food_delivery/src/data/auth_api.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AuthEpics {
  AuthEpics({@required AuthApi api})
      : assert(api != null),
        _authApi = api;

  final AuthApi _authApi;

  Epic<AppState> get epics => combineEpics(<Epic<AppState>>[
        TypedEpic<AppState, Login$>(_login),
      ]);

  Stream<AppActions> _login(Stream<Login$> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((Login$ action) => _authApi.login(email: action.email, password: action.password))
        .map((AppUser user) => Login.successful(user))
        .onErrorReturnWith((dynamic error) => Login.error(error));
    }
}
