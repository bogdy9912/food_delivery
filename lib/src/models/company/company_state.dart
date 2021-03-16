part of company_models;

abstract class CompanyState implements Built<CompanyState, CompanyStateBuilder> {
  factory CompanyState([void Function(CompanyStateBuilder b) updates]) = _$CompanyState;

  CompanyState._();

  static CompanyState fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  BuiltList<Company> get companies;

  BuiltList<Company> get searchResult;

  @nullable
  Meniu get meniu;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<CompanyState> get serializer => _$companyStateSerializer;
}