part of company_actions;

@freezed
abstract class GetCompanies with _$GetCompanies implements  AppAction{
  const factory GetCompanies() = GetCompanies$;

  const factory GetCompanies.successful(List<Company> companies) = GetCompaniesSuccessful;

  @Implements(ErrorAction)
  const factory GetCompanies.error(Object error) = GetCompaniesError;
}
