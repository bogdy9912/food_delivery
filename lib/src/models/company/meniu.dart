part of company_models;

abstract class Meniu implements Built<Meniu, MeniuBuilder> {
  factory Meniu([void Function(MeniuBuilder b) updates]) = _$Meniu;
  factory Meniu.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  Meniu._();

  @nullable
  String get id;

  BuiltList<MeniuItem> get items;



  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Meniu> get serializer => _$meniuSerializer;
}

abstract class MeniuItem implements Built<MeniuItem, MeniuItemBuilder> {
  factory MeniuItem([void Function(MeniuItemBuilder b) updates]) = _$MeniuItem;
  factory MeniuItem.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  MeniuItem._();

  String get category;

  BuiltList<Dish> get dishes;


  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<MeniuItem> get serializer => _$meniuItemSerializer;
}