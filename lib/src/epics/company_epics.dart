import 'package:food_delivery/src/actions/company/index.dart';
import 'package:food_delivery/src/actions/index.dart';
import 'package:food_delivery/src/data/company_api.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class CompanyEpics {
  CompanyEpics({@required CompanyApi api})
      : assert(api != null),
        _api = api;

  final CompanyApi _api;

  Epic<AppState> get epics => combineEpics(<Epic<AppState>>[
        TypedEpic<AppState, CreateCompany$>(_createCompany),
        TypedEpic<AppState, GetCompanies$>(_getCompanies),
        TypedEpic<AppState, SearchCompanies$>(_searchCompanies),
      ]);

  Stream<AppAction> _createCompany(Stream<CreateCompany$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreateCompany$ action) => Stream<CreateCompany$>.value(action)
            .asyncMap((CreateCompany$ action) => _api.createCompany(
                  name: action.name,
                  rating: action.rating,
                  image: action.image,
                  openHour: action.openHour,
                  closeHour: action.closeHour,
                  city: action.city,
                ))
            .mapTo(const CreateCompany.successful())
            .onErrorReturnWith((dynamic error) => CreateCompany.error(error)));
  }

  Stream<AppAction> _getCompanies(Stream<GetCompanies$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetCompanies$ action) => Stream<GetCompanies$>.value(action)
            .asyncMap((GetCompanies$ action) => _api.getCompanies())
            .map((List<Company> companies) => GetCompanies.successful(companies))
            .onErrorReturnWith((dynamic error) => GetCompanies.error(error)));
  }

  Stream<AppAction> _searchCompanies(Stream<SearchCompanies$> actions, EpicStore<AppState> store) {
    return actions //
        .debounceTime(const Duration(milliseconds: 500))
        .switchMap((SearchCompanies$ action) => Stream<SearchCompanies$>.value(action)
            .asyncMap((SearchCompanies$ action) => _api.searchCompanies(action.query))
            .map((List<Company> companies) => SearchCompanies.successful(companies))
            .onErrorReturnWith((dynamic error) => SearchCompanies.error(error)));
  }
}
