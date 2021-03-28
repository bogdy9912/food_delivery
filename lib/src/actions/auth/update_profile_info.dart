part of auth_actions;

@freezed
abstract class UpdateProfileInfo with _$UpdateProfileInfo implements AppAction {
  const factory UpdateProfileInfo({String? lastName, String? firstName, String? telephone}) = UpdateProfileInfo$;

  const factory UpdateProfileInfo.successful({String? lastName, String? firstName, String? telephone}) =
      UpdateProfileInfoSuccessful;

  @Implements(ErrorAction)
  const factory UpdateProfileInfo.error(Object error) = UpdateProfileInfoError;
}
