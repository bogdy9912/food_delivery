part of auth_actions;

@freezed
abstract class Login with _$Login implements AppAction {
  factory Login({@required String email, @required String password}) = Login$;

  factory Login.successful(AppUser user) = LoginSuccessful;

  @Implements(ErrorAction)
  factory Login.error(Object error) = LoginError;
}
