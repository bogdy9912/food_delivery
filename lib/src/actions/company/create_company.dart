part of company_actions;

@freezed
abstract class CreateCompany with _$CreateCompany implements AppAction {
  const factory CreateCompany({
    required String name,
    required double rating,
    required String image,
    required String openHour,
    required String closeHour,
    required String city,
  }) = CreateCompany$;

  const factory CreateCompany.successful() = CreateCompanySuccessful;

  @Implements(ErrorAction)
  const factory CreateCompany.error(Object error) = CreateCompanyError;
}
