import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/reducer/auth_reducer.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  _reducer,
]);
AppState _reducer(AppState state, dynamic action) {
  return state.rebuild((AppStateBuilder b) {
    return b
      ..auth = authReducer(state.auth, action).toBuilder();
  });
}