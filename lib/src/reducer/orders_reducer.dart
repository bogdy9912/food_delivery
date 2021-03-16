import 'package:built_collection/built_collection.dart';
import 'package:food_delivery/src/actions/orders/index.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:food_delivery/src/models/orders/index.dart';
import 'package:redux/redux.dart';

Reducer<OrdersState> ordersReducer = combineReducers(<Reducer<OrdersState>>[
  TypedReducer<OrdersState, GetOrdersSuccessful>(_getOrdersSuccessful),
  TypedReducer<OrdersState, UpdateOrderInfo$>(_updateOrderInfo),
]);

OrdersState _getOrdersSuccessful(OrdersState state, GetOrdersSuccessful action) {
  return state.rebuild((OrdersStateBuilder b) => b.order = ListBuilder<Order>(action.orders));
}

OrdersState _updateOrderInfo(OrdersState state, UpdateOrderInfo$ action) {
  return state.rebuild((OrdersStateBuilder b) {
    if (action.total != null) {
      b.info.total = action.total;
    } else if (action.methodOfPayment != null) {
      b.info.methodOfPayment = action.methodOfPayment;
    } else if (action.products != null) {
      b.info.products = ListBuilder<CartItem>(action.products);
    } else if (action.address != null) {
      b.info.address = action.address.toBuilder();
    } else if (action.instructions != null) {
      b.info.instructions = action.instructions;
    } else if (action.companyId != null) {
      b.info.companyId = action.companyId;
    } else {
      b.info = OrderInfo().toBuilder();
    }
  });
}
