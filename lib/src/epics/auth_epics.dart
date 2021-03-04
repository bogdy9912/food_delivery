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
        TypedEpic<AppState, InitializeApp$>(_initializeApp),
        TypedEpic<AppState, SignUp$>(_signUp),
        TypedEpic<AppState, SignOut$>(_signOut),
        TypedEpic<AppState, ForgotPassword$>(_forgotPassword),
        TypedEpic<AppState, UpdateProfileInfo$>(_updateProfileInfo),
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
            .onErrorReturnWith((dynamic error) => SignUp.error(error))
            .doOnData(action.response));
  }

  Stream<AppAction> _signOut(Stream<SignOut$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SignOut$ action) => Stream<SignOut$>.value(action)
            .asyncMap((_) => _api.signOut())
            .mapTo(const SignOut.successful())
            .onErrorReturnWith((dynamic error) => SignOut.error(error)));
  }

  Stream<AppAction> _initializeApp(Stream<InitializeApp$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((InitializeApp$ action) => Stream<InitializeApp$>.value(action)
            .asyncMap((InitializeApp$ action) => _api.initializeApp())
            .map((AppUser user) => InitializeApp.successful(user))
            .onErrorReturnWith((dynamic error) => InitializeApp.error(error)));
  }

  Stream<AppAction> _forgotPassword(Stream<ForgotPassword$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((ForgotPassword$ action) => Stream<ForgotPassword$>.value(action)
            .asyncMap((ForgotPassword$ action) => _api.forgotPassword(action.email))
            .map((_) => const ForgotPassword.successful())
            .onErrorReturnWith((dynamic error) => ForgotPassword.error(error)));
  }

  Stream<AppAction> _updateProfileInfo(Stream<UpdateProfileInfo$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((UpdateProfileInfo$ action) => Stream<UpdateProfileInfo$>.value(action)
            .asyncMap((UpdateProfileInfo$ action) {
              return _api.updateProfile(
                  uid: store.state.auth.user.uid,
                  lastName: action.lastName,
                  firstName: action.firstName,
                  telephone: action.telephone);
            })
            .mapTo(UpdateProfileInfo.successful(
              lastName: action.lastName,
              firstName: action.firstName,
              telephone: action.telephone,
            ))
            .onErrorReturnWith((dynamic error) => UpdateProfileInfo.error(error)));
  }
}
