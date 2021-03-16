part of models;

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState.initalState() {
    return _$AppState();
  }

  AppState._();

  static AppState fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  AuthState get auth;

  CompanyState get companyState;

  OrdersState get ordersState;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
