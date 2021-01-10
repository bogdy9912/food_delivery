import 'package:food_delivery/src/actions/auth/index.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:redux/redux.dart';

Reducer<AuthState> reducer = combineReducers(<Reducer<AuthState>>[
  TypedReducer<AuthState, LoginSuccessful>(_loginSuccessful),
]);

AuthState _loginSuccessful(AuthState state, LoginSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user.toBuilder());
}
