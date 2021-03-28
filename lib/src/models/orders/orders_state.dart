part of orders_models;

abstract class OrdersState implements Built<OrdersState, OrdersStateBuilder> {
  factory OrdersState([void Function(OrdersStateBuilder b)? updates]) = _$OrdersState;
  factory OrdersState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  OrdersState._();

  BuiltList<Order> get order;


  OrderInfo get info;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<OrdersState> get serializer => _$ordersStateSerializer;
}