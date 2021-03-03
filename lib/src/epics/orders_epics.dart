import 'package:food_delivery/src/actions/index.dart';
import 'package:food_delivery/src/actions/orders/index.dart';
import 'package:food_delivery/src/data/orders_api.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/models/orders/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class OrdersEpics {
  const OrdersEpics({@required OrdersApi api})
      : assert(api != null),
        _api = api;

  final OrdersApi _api;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetOrders$>(_getOrders),
      TypedEpic<AppState, CreateOrder$>(_createOrder),
    ]);
  }

  Stream<AppAction> _getOrders(Stream<GetOrders$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetOrders$ value) => Stream<GetOrders$>.value(value)
            .asyncMap((GetOrders$ event) => _api.getOrders(store.state.auth.user.uid))
            .map((List<Order> orders) => GetOrders.successful(orders))
            .onErrorReturnWith((dynamic error) => GetOrders.error(error)));
  }

  Stream<AppAction> _createOrder(Stream<CreateOrder$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreateOrder$ action) => Stream<CreateOrder$>.value(action)
            .asyncMap(
              (CreateOrder$ action) => _api.createOrder(
                uid: store.state.auth.user.uid,
                companyId: store.state.ordersState.info.companyId,
                methodOfPayment: store.state.ordersState.info.methodOfPayment,
                total: store.state.ordersState.info.total,
                addressPoint: store.state.ordersState.info.address,
                products: store.state.ordersState.info.products.toList(),
                instructions: store.state.ordersState.info.instructions,
              ),
            )
            .mapTo(const CreateOrder.successful())
            .onErrorReturnWith((dynamic error) => CreateOrder.error(error))
            .doOnData(action.response));
  }
}
