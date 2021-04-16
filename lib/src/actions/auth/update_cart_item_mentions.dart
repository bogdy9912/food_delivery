part of auth_actions;

@freezed
abstract class UpdateCartItemMentions with _$UpdateCartItemMentions implements AppAction {
  const factory UpdateCartItemMentions({required String id, required String? mentions}) = UpdateCartItemMentions$;
}
