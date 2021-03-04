part of orders_models;

abstract class OrderInfo implements Built<OrderInfo, OrderInfoBuilder> {
  factory OrderInfo([void Function(OrderInfoBuilder b) updates]) = _$OrderInfo;

  factory OrderInfo.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  OrderInfo._();

  @nullable
  AddressPoint get address;

  BuiltList<CartItem> get products;

  @nullable
  double get total;

  @nullable
  PaymentMethod get methodOfPayment;

  @nullable
  String get instructions;

  @nullable
  String get companyId;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<OrderInfo> get serializer => _$orderInfoSerializer;
}