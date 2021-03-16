part of auth_models;

abstract class RegistrationInfo implements Built<RegistrationInfo, RegistrationInfoBuilder> {
  factory RegistrationInfo([void Function(RegistrationInfoBuilder b) updates]) = _$RegistrationInfo;

  RegistrationInfo._();

  static RegistrationInfo fromJson(dynamic json) => serializers.deserializeWith(serializer, json);
@nullable
  String get email;
@nullable
  String get firstName;
@nullable
  String get lastName;
@nullable
  String get password;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<RegistrationInfo> get serializer => _$registrationInfoSerializer;
}
