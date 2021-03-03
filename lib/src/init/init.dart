import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:food_delivery/src/actions/auth/index.dart';
import 'package:food_delivery/src/data/auth_api.dart';
import 'package:food_delivery/src/data/company_api.dart';
import 'package:food_delivery/src/data/orders_api.dart';
import 'package:food_delivery/src/epics/app_epics.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/reducer/reducer.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

Future<Store<AppState>> init() async {
  await Firebase.initializeApp();

  final AuthApi authApi = AuthApi(auth: FirebaseAuth.instance, firestore: FirebaseFirestore.instance);
  final CompanyApi companyEpics = CompanyApi(firestore: FirebaseFirestore.instance);
  final OrdersApi ordersApi = OrdersApi(firestore: FirebaseFirestore.instance);
  final AppEpics epic = AppEpics(api: authApi, companyApi: companyEpics, ordersApi: ordersApi);

  return Store<AppState>(
    reducer,
    initialState: AppState.initalState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epic.epics),
    ],
  )..dispatch(const InitializeApp());
}
