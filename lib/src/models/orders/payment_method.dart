part of orders_models;

class PaymentMethod extends EnumClass {
  const PaymentMethod._(String name) : super(name);

  static const PaymentMethod card = _$card;
  static const PaymentMethod cash = _$cash;

  static BuiltSet<PaymentMethod> get values => _$values;

  static PaymentMethod valueOf(String name) => _$valueOf(name);

  static Serializer<PaymentMethod> get serializer => _$paymentMethodSerializer;
}