part of auth_models;

abstract class AddressPoint implements Built<AddressPoint, AddressPointBuilder> {
  factory AddressPoint([void Function(AddressPointBuilder b) updates]) = _$AddressPoint;

  factory AddressPoint.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  AddressPoint._();

  @nullable
  String get id;

  String get contactName;

  String get contactPhone;

  String get address;

  String get city;

  String get town;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<AddressPoint> get serializer => _$addressPointSerializer;
}
