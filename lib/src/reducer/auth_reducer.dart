import 'package:food_delivery/src/actions/auth/index.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:redux/redux.dart';

Reducer<AuthState> authReducer = combineReducers(<Reducer<AuthState>>[
  TypedReducer<AuthState, LoginSuccessful>(_loginSuccessful),
  TypedReducer<AuthState, InitializeAppSuccessful>(_initializeAppSuccessful),
  TypedReducer<AuthState, UpdateRegistrationInfo$>(_updateRegistrationInfo),
  TypedReducer<AuthState, SignUpSuccessful>(_signUpSuccessful),
  TypedReducer<AuthState, UpdateCart$>(_updateCart),
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


AuthState _updateCart(AuthState state, UpdateCart$ action) {
  print('reducer: ${action}');
  final Cart cartState = state.cart ?? Cart();

  return state.rebuild((AuthStateBuilder b) {
    if (action.add != null) {
      print('reducer: ${action.add}');
      final int index = cartState.items.indexWhere((CartItem item) => item.id == action.add.id);

      if (index == -1) {
        b.cart.items.add(CartItem(id: action.add.id, quantity: 1, price: action.add.price, name: action.add.name));
      } else {
        b.cart.items[index] = b.cart.items[index].rebuild((CartItemBuilder b) => b.quantity = b.quantity + 1);
      }
    } else if (action.remove != null) {
      final int index = cartState.items.indexWhere((CartItem item) => item.id == action.remove.id);
      if (index == -1) {
        // eroare
        // ar trb sa fac si pt cazul in care ajunge quantity la 0? si sa fac clear la product? sau fac din UI sa fie minim 1bucs
      } else {
        if (b.cart.items[index].quantity > 0) {
          b.cart.items[index] =
              b.cart.items[index].rebuild((CartItemBuilder b) => b.quantity = b.quantity - 1);
        } else {
          b.cart.items.removeWhere((CartItem item) => item.id == action.remove.id);
        }
      }
    } else if (action.clearItem != null) {
      b.cart.items.removeWhere((CartItem item) => item.id == action.clearItem.id);
    } else {
      b.cart = Cart().toBuilder();
    }
  });
}
