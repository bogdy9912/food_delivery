import 'package:food_delivery/src/actions/auth/index.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:redux/redux.dart';

Reducer<AuthState> authReducer = combineReducers(<Reducer<AuthState>>[
  TypedReducer<AuthState, LoginSuccessful>(_loginSuccessful),
  TypedReducer<AuthState, UpdateRegistrationInfo$>(_updateRegistrationInfo),
]);

AuthState _loginSuccessful(AuthState state, LoginSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user.toBuilder());
}

AuthState _updateRegistrationInfo(AuthState state, UpdateRegistrationInfo$ action) {
  return state.rebuild((AuthStateBuilder b) {
    if (action.email != null) {
      b.info.email = action.email;
    } else if (action.password != null) {
      b.info.password = action.password;
    } else if (action.firstName != null) {
      b.info.firstName = action.firstName;
    } else if (action.lastName != null) {
      b.info.lastName = action.lastName;
    } else {
      b.info = RegistrationInfo().toBuilder();
    }
  });
}
