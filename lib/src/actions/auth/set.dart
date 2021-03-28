part of auth_actions;

@freezed
abstract class UpdateRegistrationInfo with _$UpdateRegistrationInfo implements AppAction {
  const factory UpdateRegistrationInfo({String? email, String? password, String? firstName, String? lastName}) =
      UpdateRegistrationInfo$;
}
