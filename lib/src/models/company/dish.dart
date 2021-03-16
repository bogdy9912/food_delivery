part of company_models;

abstract class Dish implements Built<Dish, DishBuilder> {
  factory Dish([void Function(DishBuilder b) updates]) = _$Dish;

  Dish._();

  static Dish fromJson(dynamic json) => serializers.deserializeWith(serializer, json);
  @nullable
  String get id;

  String get name;

  String get description;

  double get price;

  int get quantity;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Dish> get serializer => _$dishSerializer;
}
