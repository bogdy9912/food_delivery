part of company_actions;

@freezed
abstract class SearchCompanies with _$SearchCompanies implements AppAction {
  const factory SearchCompanies(String query) = SearchCompanies$;

  const factory SearchCompanies.successful(List<Company> companies) = SearchCompaniesSuccessful;

  @Implements(ErrorAction)
  const factory SearchCompanies.error(Object error) = SearchCompaniesError;
}
