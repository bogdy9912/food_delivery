part of auth_models;

abstract class AppUser implements Built<AppUser, AppUserBuilder> {
  factory AppUser([void Function(AppUserBuilder b) updates]) = _$AppUser;

  AppUser._();

  static AppUser fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  String get uid;

  String get email;
@nullable
  String get firstName;
@nullable
  String get lastName;
@nullable
  String get telephone;

  BuiltMap<String, AddressPoint> get addresses;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<AppUser> get serializer => _$appUserSerializer;
}
