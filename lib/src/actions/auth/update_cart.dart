part of auth_actions;

@freezed
abstract class UpdateCart with _$UpdateCart implements AppAction {
  const factory UpdateCart({
    Dish? add,
    Dish? remove,
    Dish? clearItem,
  }) = UpdateCart$;
}
