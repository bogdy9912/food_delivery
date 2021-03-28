part of company_models;

abstract class Company implements Built<Company, CompanyBuilder> {
  factory Company([void Function(CompanyBuilder b)? updates]) = _$Company;

  factory Company.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  Company._();

  String get id;

  String get name;


  double get rating;


  String? get image;

  String get openHour;

  String get closeHour;

  String get city;


  BuiltList<String> get searchIndex;

  Map<String, dynamic>? get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>?;

  static Serializer<Company> get serializer => _$companySerializer;
}
