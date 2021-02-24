import 'package:built_collection/built_collection.dart';
import 'package:food_delivery/src/actions/company/index.dart';
import 'package:food_delivery/src/models/company/index.dart';
import 'package:redux/redux.dart';

Reducer<CompanyState> companyReducer = combineReducers(<Reducer<CompanyState>>[
  TypedReducer<CompanyState, GetCompaniesSuccessful>(_getCompaniesSuccessful),
  TypedReducer<CompanyState, SearchCompaniesSuccessful>(_searchCompaniesSuccessful),
  TypedReducer<CompanyState, GetMeniuSuccessful>(_getMeniuSuccessful),
  TypedReducer<CompanyState, GetMeniuEvent>(_getMeniuEvent),
]);

CompanyState _getCompaniesSuccessful(CompanyState state, GetCompaniesSuccessful action) {
  return state.rebuild((CompanyStateBuilder b) => b.companies = ListBuilder<Company>(action.companies));
}

CompanyState _searchCompaniesSuccessful(CompanyState state, SearchCompaniesSuccessful action) {
  return state.rebuild((CompanyStateBuilder b) => b.searchResult = ListBuilder<Company>(action.companies));
}

CompanyState _getMeniuSuccessful(CompanyState state, GetMeniuSuccessful action) {
  return state.rebuild((CompanyStateBuilder b) => b.meniu = action.meniu.toBuilder());
}

CompanyState _getMeniuEvent(CompanyState state, GetMeniuEvent action) {
  return state.rebuild((CompanyStateBuilder b) => b.meniu = null);
}
