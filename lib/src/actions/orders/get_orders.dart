part of orders_actions;

@freezed
abstract class GetOrders with _$GetOrders implements AppAction {
  const factory GetOrders({required ActionResponse response}) = GetOrders$;

  const factory GetOrders.successful(List<Order> orders) = GetOrdersSuccessful;

  @Implements(ErrorAction)
  const factory GetOrders.error(Object error) = GetOrdersError;
}
