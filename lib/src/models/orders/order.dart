part of orders_models;

abstract class Order implements Built<Order, OrderBuilder> {
  factory Order([void Function(OrderBuilder b)? updates]) = _$Order;

  factory Order.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  Order._();


  String get id;

  String get uid;

  String get companyId;

  AddressPoint get address;

  BuiltList<CartItem> get products;

  double get total;

  PaymentMethod get methodOfPayment;

  String get date;


  String? get instructions;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Order> get serializer => _$orderSerializer;
}