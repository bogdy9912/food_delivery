part of auth_models;

abstract class Cart implements Built<Cart, CartBuilder> {
  factory Cart([void Function(CartBuilder b) updates]) = _$Cart;

  factory Cart.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  Cart._();

  BuiltList<CartItem> get items;

  @memoized
  int get totalProducts {
    return items.fold(0, (int sum, CartItem current) => sum + current.quantity);
  }

  @memoized
  double get totalAmount {
    return items.fold(0, (double sum, CartItem current) => sum + current.quantity * current.price ?? 0);
  }

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Cart> get serializer => _$cartSerializer;
}

abstract class CartItem implements Built<CartItem, CartItemBuilder> {
  factory CartItem({@required String id, @required String name, @required int quantity, @required double price, @required String description}) {
    return _$CartItem((CartItemBuilder b) {
      b
        ..id = id
        ..name = name
        ..quantity = quantity
        ..price = price
      ..description = description;
    });
  }

  CartItem._();

  static CartItem fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  String get id;

  String get name;

  int get quantity;

  double get price;
  @nullable
  String get description;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<CartItem> get serializer => _$cartItemSerializer;
}
