part of auth_actions;

@freezed
abstract class SignUp with _$SignUp implements AppAction {
  const factory SignUp() = SignUp$;

  const factory SignUp.successful(AppUser user) = SignUpSuccessful;

  @Implements(ErrorAction)
  const factory SignUp.error(Object error) = SignUpError;
}
