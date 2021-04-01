part of auth_actions;

@freezed
abstract class UpdateCart with _$UpdateCart implements AppAction {
  const factory UpdateCart({
    CartItem? add,
    CartItem? remove,
    CartItem? clearItem,
  }) = UpdateCart$;
}
