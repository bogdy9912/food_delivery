import 'package:food_delivery/src/actions/auth/index.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:redux/redux.dart';

Reducer<AuthState> authReducer = combineReducers(<Reducer<AuthState>>[
  TypedReducer<AuthState, LoginSuccessful>(_loginSuccessful),
  TypedReducer<AuthState, InitializeAppSuccessful>(_initializeAppSuccessful),
  TypedReducer<AuthState, UpdateRegistrationInfo$>(_updateRegistrationInfo),
  TypedReducer<AuthState, SignUpSuccessful>(_signUpSuccessful),
]);

AuthState _loginSuccessful(AuthState state, LoginSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user.toBuilder());
}

AuthState _updateRegistrationInfo(AuthState state, UpdateRegistrationInfo$ action) {
  print('reducer: ${action.password}');
  return state.rebuild((AuthStateBuilder b) {
    if (action.email != null) {
      b.info.email = action.email;
    }
    if (action.password != null) {
      b.info.password = action.password;
    }
    if (action.firstName != null) {
      b.info.firstName = action.firstName;
    }
    if (action.lastName != null) {
      b.info.lastName = action.lastName;
    }
    if (action.password == null && action.email == null && action.firstName == null && action.lastName == null) {
      b.info = RegistrationInfo().toBuilder();
    }
  });
}

AuthState _signUpSuccessful(AuthState state, SignUpSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user.toBuilder());
}

AuthState _initializeAppSuccessful(AuthState state, InitializeAppSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user.toBuilder());
}
