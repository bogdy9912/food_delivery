part of orders_models;

abstract class OrderInfo implements Built<OrderInfo, OrderInfoBuilder> {
  factory OrderInfo([void Function(OrderInfoBuilder b)? updates]) = _$OrderInfo;

  factory OrderInfo.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  OrderInfo._();


  AddressPoint? get address;

  BuiltList<CartItem> get products;


  double? get total;


  PaymentMethod? get methodOfPayment;


  String? get instructions;


  String? get companyId;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<OrderInfo> get serializer => _$orderInfoSerializer;
}