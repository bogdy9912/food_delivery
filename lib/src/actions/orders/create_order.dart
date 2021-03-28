part of orders_actions;

@freezed
abstract class CreateOrder with _$CreateOrder implements AppAction {
  const factory CreateOrder({required ActionResponse response}) = CreateOrder$;

  const factory CreateOrder.successful() = CreateOrderSuccessful;

  @Implements(ErrorAction)
  const factory CreateOrder.error(Object error) = CreateOrderError;
}
