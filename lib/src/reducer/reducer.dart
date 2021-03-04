import 'package:food_delivery/src/actions/auth/index.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/reducer/auth_reducer.dart';
import 'package:food_delivery/src/reducer/company_reducer.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  _reducer,
  TypedReducer<AppState, SignOutSuccessful>(_signOutSuccessful),
]);

AppState _reducer(AppState state, dynamic action) {
  return state.rebuild((AppStateBuilder b) {
    return b
      ..auth = authReducer(state.auth, action).toBuilder()
      ..companyState = companyReducer(state.companyState, action).toBuilder();
  });
}

AppState _signOutSuccessful(AppState state, SignOutSuccessful action) {
  return AppState.initalState();
}
