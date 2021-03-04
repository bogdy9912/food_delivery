part of orders_actions;


@freezed
abstract class UpdateOrderInfo with _$UpdateOrderInfo implements AppAction {
  const factory UpdateOrderInfo({
    AddressPoint address,
    BuiltList<CartItem> products,
    double total,
    PaymentMethod methodOfPayment,
    String companyId,
    String instructions,
  }) = UpdateOrderInfo$;
}
