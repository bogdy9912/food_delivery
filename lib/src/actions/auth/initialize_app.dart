part of auth_actions;

@freezed
abstract class InitializeApp with _$InitializeApp implements AppAction {
  const factory InitializeApp() = InitializeApp$;

  const factory InitializeApp.successful(AppUser user) = InitializeAppSuccessful;

  @Implements(ErrorAction)
  const factory InitializeApp.error(Object error) = InitializeAppError;
}