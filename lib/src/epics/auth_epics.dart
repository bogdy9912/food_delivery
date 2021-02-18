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
        _api = api;

  final AuthApi _api;

  Epic<AppState> get epics => combineEpics(<Epic<AppState>>[
        TypedEpic<AppState, Login$>(_login),
        TypedEpic<AppState, SignUp$>(_signUp),
      ]);

  Stream<AppAction> _login(Stream<Login$> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((Login$ action) => _api.login(email: action.email, password: action.password))
        .map((AppUser user) => Login.successful(user))
        .onErrorReturnWith((dynamic error) => Login.error(error));
  }

  Stream<AppAction> _signUp(Stream<SignUp$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SignUp$ action) => Stream<SignUp$>.value(action)
            .asyncMap((_) => _api.signUp(
                email: store.state.auth.info.email,
                password: store.state.auth.info.password,
                firstName: store.state.auth.info.firstName,
                lastName: store.state.auth.info.lastName))
            .map((AppUser user) => SignUp.successful(user))
            .onErrorReturnWith((dynamic error) => SignUp.error(error)));
  }
}
