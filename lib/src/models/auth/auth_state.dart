part of auth_models;

abstract class AuthState implements Built<AuthState, AuthStateBuilder> {
  factory AuthState.initialState() {
    return _$AuthState();
  }

  factory AuthState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  AuthState._();

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  @nullable
  AppUser get user;

  RegistrationInfo get info;

  @nullable
  bool get isLoading;

  @nullable
  Cart get cart;

  static Serializer<AuthState> get serializer => _$authStateSerializer;
}
