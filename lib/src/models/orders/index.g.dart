// GENERATED CODE - DO NOT MODIFY BY HAND

part of orders_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PaymentMethod _$card = const PaymentMethod._('card');
const PaymentMethod _$cash = const PaymentMethod._('cash');

PaymentMethod _$valueOf(String name) {
  switch (name) {
    case 'card':
      return _$card;
    case 'cash':
      return _$cash;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PaymentMethod> _$values =
    new BuiltSet<PaymentMethod>(const <PaymentMethod>[
  _$card,
  _$cash,
]);

Serializer<Order> _$orderSerializer = new _$OrderSerializer();
Serializer<OrdersState> _$ordersStateSerializer = new _$OrdersStateSerializer();
Serializer<OrderInfo> _$orderInfoSerializer = new _$OrderInfoSerializer();
Serializer<PaymentMethod> _$paymentMethodSerializer =
    new _$PaymentMethodSerializer();

class _$OrderSerializer implements StructuredSerializer<Order> {
  @override
  final Iterable<Type> types = const [Order, _$Order];
  @override
  final String wireName = 'Order';

  @override
  Iterable<Object?> serialize(Serializers serializers, Order object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'companyId',
      serializers.serialize(object.companyId,
          specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(AddressPoint)),
      'products',
      serializers.serialize(object.products,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CartItem)])),
      'total',
      serializers.serialize(object.total,
          specifiedType: const FullType(double)),
      'methodOfPayment',
      serializers.serialize(object.methodOfPayment,
          specifiedType: const FullType(PaymentMethod)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.instructions;
    if (value != null) {
      result
        ..add('instructions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Order deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'companyId':
          result.companyId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address.replace(serializers.deserialize(value,
              specifiedType: const FullType(AddressPoint))! as AddressPoint);
          break;
        case 'products':
          result.products.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CartItem)]))!
              as BuiltList<Object>);
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'methodOfPayment':
          result.methodOfPayment = serializers.deserialize(value,
              specifiedType: const FullType(PaymentMethod)) as PaymentMethod;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'instructions':
          result.instructions = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$OrdersStateSerializer implements StructuredSerializer<OrdersState> {
  @override
  final Iterable<Type> types = const [OrdersState, _$OrdersState];
  @override
  final String wireName = 'OrdersState';

  @override
  Iterable<Object?> serialize(Serializers serializers, OrdersState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'order',
      serializers.serialize(object.order,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Order)])),
      'info',
      serializers.serialize(object.info,
          specifiedType: const FullType(OrderInfo)),
    ];

    return result;
  }

  @override
  OrdersState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrdersStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'order':
          result.order.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Order)]))!
              as BuiltList<Object>);
          break;
        case 'info':
          result.info.replace(serializers.deserialize(value,
              specifiedType: const FullType(OrderInfo))! as OrderInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$OrderInfoSerializer implements StructuredSerializer<OrderInfo> {
  @override
  final Iterable<Type> types = const [OrderInfo, _$OrderInfo];
  @override
  final String wireName = 'OrderInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers, OrderInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'products',
      serializers.serialize(object.products,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CartItem)])),
    ];
    Object? value;
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AddressPoint)));
    }
    value = object.total;
    if (value != null) {
      result
        ..add('total')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.methodOfPayment;
    if (value != null) {
      result
        ..add('methodOfPayment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(PaymentMethod)));
    }
    value = object.instructions;
    if (value != null) {
      result
        ..add('instructions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.companyId;
    if (value != null) {
      result
        ..add('companyId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  OrderInfo deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'address':
          result.address.replace(serializers.deserialize(value,
              specifiedType: const FullType(AddressPoint))! as AddressPoint);
          break;
        case 'products':
          result.products.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CartItem)]))!
              as BuiltList<Object>);
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'methodOfPayment':
          result.methodOfPayment = serializers.deserialize(value,
              specifiedType: const FullType(PaymentMethod)) as PaymentMethod;
          break;
        case 'instructions':
          result.instructions = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'companyId':
          result.companyId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PaymentMethodSerializer implements PrimitiveSerializer<PaymentMethod> {
  @override
  final Iterable<Type> types = const <Type>[PaymentMethod];
  @override
  final String wireName = 'PaymentMethod';

  @override
  Object serialize(Serializers serializers, PaymentMethod object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  PaymentMethod deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PaymentMethod.valueOf(serialized as String);
}

class _$Order extends Order {
  @override
  final String id;
  @override
  final String uid;
  @override
  final String companyId;
  @override
  final AddressPoint address;
  @override
  final BuiltList<CartItem> products;
  @override
  final double total;
  @override
  final PaymentMethod methodOfPayment;
  @override
  final String date;
  @override
  final String? instructions;

  factory _$Order([void Function(OrderBuilder)? updates]) =>
      (new OrderBuilder()..update(updates)).build();

  _$Order._(
      {required this.id,
      required this.uid,
      required this.companyId,
      required this.address,
      required this.products,
      required this.total,
      required this.methodOfPayment,
      required this.date,
      this.instructions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Order', 'id');
    BuiltValueNullFieldError.checkNotNull(uid, 'Order', 'uid');
    BuiltValueNullFieldError.checkNotNull(companyId, 'Order', 'companyId');
    BuiltValueNullFieldError.checkNotNull(address, 'Order', 'address');
    BuiltValueNullFieldError.checkNotNull(products, 'Order', 'products');
    BuiltValueNullFieldError.checkNotNull(total, 'Order', 'total');
    BuiltValueNullFieldError.checkNotNull(
        methodOfPayment, 'Order', 'methodOfPayment');
    BuiltValueNullFieldError.checkNotNull(date, 'Order', 'date');
  }

  @override
  Order rebuild(void Function(OrderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderBuilder toBuilder() => new OrderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Order &&
        id == other.id &&
        uid == other.uid &&
        companyId == other.companyId &&
        address == other.address &&
        products == other.products &&
        total == other.total &&
        methodOfPayment == other.methodOfPayment &&
        date == other.date &&
        instructions == other.instructions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), uid.hashCode),
                                companyId.hashCode),
                            address.hashCode),
                        products.hashCode),
                    total.hashCode),
                methodOfPayment.hashCode),
            date.hashCode),
        instructions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Order')
          ..add('id', id)
          ..add('uid', uid)
          ..add('companyId', companyId)
          ..add('address', address)
          ..add('products', products)
          ..add('total', total)
          ..add('methodOfPayment', methodOfPayment)
          ..add('date', date)
          ..add('instructions', instructions))
        .toString();
  }
}

class OrderBuilder implements Builder<Order, OrderBuilder> {
  _$Order? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _companyId;
  String? get companyId => _$this._companyId;
  set companyId(String? companyId) => _$this._companyId = companyId;

  AddressPointBuilder? _address;
  AddressPointBuilder get address =>
      _$this._address ??= new AddressPointBuilder();
  set address(AddressPointBuilder? address) => _$this._address = address;

  ListBuilder<CartItem>? _products;
  ListBuilder<CartItem> get products =>
      _$this._products ??= new ListBuilder<CartItem>();
  set products(ListBuilder<CartItem>? products) => _$this._products = products;

  double? _total;
  double? get total => _$this._total;
  set total(double? total) => _$this._total = total;

  PaymentMethod? _methodOfPayment;
  PaymentMethod? get methodOfPayment => _$this._methodOfPayment;
  set methodOfPayment(PaymentMethod? methodOfPayment) =>
      _$this._methodOfPayment = methodOfPayment;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _instructions;
  String? get instructions => _$this._instructions;
  set instructions(String? instructions) => _$this._instructions = instructions;

  OrderBuilder();

  OrderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _uid = $v.uid;
      _companyId = $v.companyId;
      _address = $v.address.toBuilder();
      _products = $v.products.toBuilder();
      _total = $v.total;
      _methodOfPayment = $v.methodOfPayment;
      _date = $v.date;
      _instructions = $v.instructions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Order other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Order;
  }

  @override
  void update(void Function(OrderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Order build() {
    _$Order _$result;
    try {
      _$result = _$v ??
          new _$Order._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'Order', 'id'),
              uid: BuiltValueNullFieldError.checkNotNull(uid, 'Order', 'uid'),
              companyId: BuiltValueNullFieldError.checkNotNull(
                  companyId, 'Order', 'companyId'),
              address: address.build(),
              products: products.build(),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, 'Order', 'total'),
              methodOfPayment: BuiltValueNullFieldError.checkNotNull(
                  methodOfPayment, 'Order', 'methodOfPayment'),
              date:
                  BuiltValueNullFieldError.checkNotNull(date, 'Order', 'date'),
              instructions: instructions);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        address.build();
        _$failedField = 'products';
        products.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Order', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$OrdersState extends OrdersState {
  @override
  final BuiltList<Order> order;
  @override
  final OrderInfo info;

  factory _$OrdersState([void Function(OrdersStateBuilder)? updates]) =>
      (new OrdersStateBuilder()..update(updates)).build();

  _$OrdersState._({required this.order, required this.info}) : super._() {
    BuiltValueNullFieldError.checkNotNull(order, 'OrdersState', 'order');
    BuiltValueNullFieldError.checkNotNull(info, 'OrdersState', 'info');
  }

  @override
  OrdersState rebuild(void Function(OrdersStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrdersStateBuilder toBuilder() => new OrdersStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrdersState && order == other.order && info == other.info;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, order.hashCode), info.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrdersState')
          ..add('order', order)
          ..add('info', info))
        .toString();
  }
}

class OrdersStateBuilder implements Builder<OrdersState, OrdersStateBuilder> {
  _$OrdersState? _$v;

  ListBuilder<Order>? _order;
  ListBuilder<Order> get order => _$this._order ??= new ListBuilder<Order>();
  set order(ListBuilder<Order>? order) => _$this._order = order;

  OrderInfoBuilder? _info;
  OrderInfoBuilder get info => _$this._info ??= new OrderInfoBuilder();
  set info(OrderInfoBuilder? info) => _$this._info = info;

  OrdersStateBuilder();

  OrdersStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _order = $v.order.toBuilder();
      _info = $v.info.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrdersState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrdersState;
  }

  @override
  void update(void Function(OrdersStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrdersState build() {
    _$OrdersState _$result;
    try {
      _$result =
          _$v ?? new _$OrdersState._(order: order.build(), info: info.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'order';
        order.build();
        _$failedField = 'info';
        info.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OrdersState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$OrderInfo extends OrderInfo {
  @override
  final AddressPoint? address;
  @override
  final BuiltList<CartItem> products;
  @override
  final double? total;
  @override
  final PaymentMethod? methodOfPayment;
  @override
  final String? instructions;
  @override
  final String? companyId;

  factory _$OrderInfo([void Function(OrderInfoBuilder)? updates]) =>
      (new OrderInfoBuilder()..update(updates)).build();

  _$OrderInfo._(
      {this.address,
      required this.products,
      this.total,
      this.methodOfPayment,
      this.instructions,
      this.companyId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(products, 'OrderInfo', 'products');
  }

  @override
  OrderInfo rebuild(void Function(OrderInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderInfoBuilder toBuilder() => new OrderInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderInfo &&
        address == other.address &&
        products == other.products &&
        total == other.total &&
        methodOfPayment == other.methodOfPayment &&
        instructions == other.instructions &&
        companyId == other.companyId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, address.hashCode), products.hashCode),
                    total.hashCode),
                methodOfPayment.hashCode),
            instructions.hashCode),
        companyId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderInfo')
          ..add('address', address)
          ..add('products', products)
          ..add('total', total)
          ..add('methodOfPayment', methodOfPayment)
          ..add('instructions', instructions)
          ..add('companyId', companyId))
        .toString();
  }
}

class OrderInfoBuilder implements Builder<OrderInfo, OrderInfoBuilder> {
  _$OrderInfo? _$v;

  AddressPointBuilder? _address;
  AddressPointBuilder get address =>
      _$this._address ??= new AddressPointBuilder();
  set address(AddressPointBuilder? address) => _$this._address = address;

  ListBuilder<CartItem>? _products;
  ListBuilder<CartItem> get products =>
      _$this._products ??= new ListBuilder<CartItem>();
  set products(ListBuilder<CartItem>? products) => _$this._products = products;

  double? _total;
  double? get total => _$this._total;
  set total(double? total) => _$this._total = total;

  PaymentMethod? _methodOfPayment;
  PaymentMethod? get methodOfPayment => _$this._methodOfPayment;
  set methodOfPayment(PaymentMethod? methodOfPayment) =>
      _$this._methodOfPayment = methodOfPayment;

  String? _instructions;
  String? get instructions => _$this._instructions;
  set instructions(String? instructions) => _$this._instructions = instructions;

  String? _companyId;
  String? get companyId => _$this._companyId;
  set companyId(String? companyId) => _$this._companyId = companyId;

  OrderInfoBuilder();

  OrderInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address?.toBuilder();
      _products = $v.products.toBuilder();
      _total = $v.total;
      _methodOfPayment = $v.methodOfPayment;
      _instructions = $v.instructions;
      _companyId = $v.companyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrderInfo;
  }

  @override
  void update(void Function(OrderInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrderInfo build() {
    _$OrderInfo _$result;
    try {
      _$result = _$v ??
          new _$OrderInfo._(
              address: _address?.build(),
              products: products.build(),
              total: total,
              methodOfPayment: methodOfPayment,
              instructions: instructions,
              companyId: companyId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();
        _$failedField = 'products';
        products.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OrderInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
