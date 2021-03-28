part of company_actions;

@freezed
abstract class GetMeniu with _$GetMeniu implements AppAction {
  const factory GetMeniu({required String companyId}) = GetMeniu$;

  const factory GetMeniu.successful(Meniu meniu) = GetMeniuSuccessful;

  const factory GetMeniu.event() = GetMeniuEvent;

  @Implements(ErrorAction)
  const factory GetMeniu.error(Object error) = GetMeniuError;
}
