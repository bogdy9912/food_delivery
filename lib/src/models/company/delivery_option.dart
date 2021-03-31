part of company_models;


class DeliveryOption extends EnumClass {
  const DeliveryOption._(String name) : super(name);

  static const DeliveryOption home = _$home;
  static const DeliveryOption pickup = _$pickup;

  static BuiltSet<DeliveryOption> get values => _$values;

  static DeliveryOption valueOf(String name) => _$valueOf(name);

  static Serializer<DeliveryOption> get serializer => _$deliveryOptionSerializer;
}