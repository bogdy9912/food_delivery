part of auth_actions;

@freezed
abstract class Login with _$Login implements AppActions {
  factory Login({@required String email, @required String password}) = Login$;

  factory Login.successful(AppUser user) = LoginSuccessful;

  @Implements(ErrorActions)
  factory Login.error(Object error) = LoginError;
}
