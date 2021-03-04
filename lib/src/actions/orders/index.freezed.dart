// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of orders_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GetOrdersTearOff {
  const _$GetOrdersTearOff();

// ignore: unused_element
  GetOrders$ call() {
    return const GetOrders$();
  }

// ignore: unused_element
  GetOrdersSuccessful successful(List<Order> orders) {
    return GetOrdersSuccessful(
      orders,
    );
  }

// ignore: unused_element
  GetOrdersError error(Object error) {
    return GetOrdersError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetOrders = _$GetOrdersTearOff();

/// @nodoc
mixin _$GetOrders {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Order> orders),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Order> orders),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetOrders$ value), {
    @required Result successful(GetOrdersSuccessful value),
    @required Result error(GetOrdersError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetOrders$ value), {
    Result successful(GetOrdersSuccessful value),
    Result error(GetOrdersError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetOrdersCopyWith<$Res> {
  factory $GetOrdersCopyWith(GetOrders value, $Res Function(GetOrders) then) =
      _$GetOrdersCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetOrdersCopyWithImpl<$Res> implements $GetOrdersCopyWith<$Res> {
  _$GetOrdersCopyWithImpl(this._value, this._then);

  final GetOrders _value;
  // ignore: unused_field
  final $Res Function(GetOrders) _then;
}

/// @nodoc
abstract class $GetOrders$CopyWith<$Res> {
  factory $GetOrders$CopyWith(
          GetOrders$ value, $Res Function(GetOrders$) then) =
      _$GetOrders$CopyWithImpl<$Res>;
}

/// @nodoc
class _$GetOrders$CopyWithImpl<$Res> extends _$GetOrdersCopyWithImpl<$Res>
    implements $GetOrders$CopyWith<$Res> {
  _$GetOrders$CopyWithImpl(GetOrders$ _value, $Res Function(GetOrders$) _then)
      : super(_value, (v) => _then(v as GetOrders$));

  @override
  GetOrders$ get _value => super._value as GetOrders$;
}

/// @nodoc
class _$GetOrders$ implements GetOrders$ {
  const _$GetOrders$();

  @override
  String toString() {
    return 'GetOrders()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetOrders$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Order> orders),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Order> orders),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetOrders$ value), {
    @required Result successful(GetOrdersSuccessful value),
    @required Result error(GetOrdersError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetOrders$ value), {
    Result successful(GetOrdersSuccessful value),
    Result error(GetOrdersError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetOrders$ implements GetOrders {
  const factory GetOrders$() = _$GetOrders$;
}

/// @nodoc
abstract class $GetOrdersSuccessfulCopyWith<$Res> {
  factory $GetOrdersSuccessfulCopyWith(
          GetOrdersSuccessful value, $Res Function(GetOrdersSuccessful) then) =
      _$GetOrdersSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Order> orders});
}

/// @nodoc
class _$GetOrdersSuccessfulCopyWithImpl<$Res>
    extends _$GetOrdersCopyWithImpl<$Res>
    implements $GetOrdersSuccessfulCopyWith<$Res> {
  _$GetOrdersSuccessfulCopyWithImpl(
      GetOrdersSuccessful _value, $Res Function(GetOrdersSuccessful) _then)
      : super(_value, (v) => _then(v as GetOrdersSuccessful));

  @override
  GetOrdersSuccessful get _value => super._value as GetOrdersSuccessful;

  @override
  $Res call({
    Object orders = freezed,
  }) {
    return _then(GetOrdersSuccessful(
      orders == freezed ? _value.orders : orders as List<Order>,
    ));
  }
}

/// @nodoc
class _$GetOrdersSuccessful implements GetOrdersSuccessful {
  const _$GetOrdersSuccessful(this.orders) : assert(orders != null);

  @override
  final List<Order> orders;

  @override
  String toString() {
    return 'GetOrders.successful(orders: $orders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetOrdersSuccessful &&
            (identical(other.orders, orders) ||
                const DeepCollectionEquality().equals(other.orders, orders)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orders);

  @override
  $GetOrdersSuccessfulCopyWith<GetOrdersSuccessful> get copyWith =>
      _$GetOrdersSuccessfulCopyWithImpl<GetOrdersSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Order> orders),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(orders);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Order> orders),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(orders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetOrders$ value), {
    @required Result successful(GetOrdersSuccessful value),
    @required Result error(GetOrdersError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetOrders$ value), {
    Result successful(GetOrdersSuccessful value),
    Result error(GetOrdersError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetOrdersSuccessful implements GetOrders {
  const factory GetOrdersSuccessful(List<Order> orders) = _$GetOrdersSuccessful;

  List<Order> get orders;
  $GetOrdersSuccessfulCopyWith<GetOrdersSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetOrdersErrorCopyWith<$Res> {
  factory $GetOrdersErrorCopyWith(
          GetOrdersError value, $Res Function(GetOrdersError) then) =
      _$GetOrdersErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetOrdersErrorCopyWithImpl<$Res> extends _$GetOrdersCopyWithImpl<$Res>
    implements $GetOrdersErrorCopyWith<$Res> {
  _$GetOrdersErrorCopyWithImpl(
      GetOrdersError _value, $Res Function(GetOrdersError) _then)
      : super(_value, (v) => _then(v as GetOrdersError));

  @override
  GetOrdersError get _value => super._value as GetOrdersError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetOrdersError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetOrdersError implements GetOrdersError {
  const _$GetOrdersError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetOrders.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetOrdersError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetOrdersErrorCopyWith<GetOrdersError> get copyWith =>
      _$GetOrdersErrorCopyWithImpl<GetOrdersError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Order> orders),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Order> orders),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetOrders$ value), {
    @required Result successful(GetOrdersSuccessful value),
    @required Result error(GetOrdersError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetOrders$ value), {
    Result successful(GetOrdersSuccessful value),
    Result error(GetOrdersError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetOrdersError implements GetOrders, ErrorAction {
  const factory GetOrdersError(Object error) = _$GetOrdersError;

  Object get error;
  $GetOrdersErrorCopyWith<GetOrdersError> get copyWith;
}

/// @nodoc
class _$UpdateOrderInfoTearOff {
  const _$UpdateOrderInfoTearOff();

// ignore: unused_element
  UpdateOrderInfo$ call(
      {AddressPoint address,
      BuiltList<CartItem> products,
      double total,
      PaymentMethod methodOfPayment,
      String companyId,
      String instructions}) {
    return UpdateOrderInfo$(
      address: address,
      products: products,
      total: total,
      methodOfPayment: methodOfPayment,
      companyId: companyId,
      instructions: instructions,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateOrderInfo = _$UpdateOrderInfoTearOff();

/// @nodoc
mixin _$UpdateOrderInfo {
  AddressPoint get address;
  BuiltList<CartItem> get products;
  double get total;
  PaymentMethod get methodOfPayment;
  String get companyId;
  String get instructions;

  $UpdateOrderInfoCopyWith<UpdateOrderInfo> get copyWith;
}

/// @nodoc
abstract class $UpdateOrderInfoCopyWith<$Res> {
  factory $UpdateOrderInfoCopyWith(
          UpdateOrderInfo value, $Res Function(UpdateOrderInfo) then) =
      _$UpdateOrderInfoCopyWithImpl<$Res>;
  $Res call(
      {AddressPoint address,
      BuiltList<CartItem> products,
      double total,
      PaymentMethod methodOfPayment,
      String companyId,
      String instructions});
}

/// @nodoc
class _$UpdateOrderInfoCopyWithImpl<$Res>
    implements $UpdateOrderInfoCopyWith<$Res> {
  _$UpdateOrderInfoCopyWithImpl(this._value, this._then);

  final UpdateOrderInfo _value;
  // ignore: unused_field
  final $Res Function(UpdateOrderInfo) _then;

  @override
  $Res call({
    Object address = freezed,
    Object products = freezed,
    Object total = freezed,
    Object methodOfPayment = freezed,
    Object companyId = freezed,
    Object instructions = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed ? _value.address : address as AddressPoint,
      products: products == freezed
          ? _value.products
          : products as BuiltList<CartItem>,
      total: total == freezed ? _value.total : total as double,
      methodOfPayment: methodOfPayment == freezed
          ? _value.methodOfPayment
          : methodOfPayment as PaymentMethod,
      companyId: companyId == freezed ? _value.companyId : companyId as String,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions as String,
    ));
  }
}

/// @nodoc
abstract class $UpdateOrderInfo$CopyWith<$Res>
    implements $UpdateOrderInfoCopyWith<$Res> {
  factory $UpdateOrderInfo$CopyWith(
          UpdateOrderInfo$ value, $Res Function(UpdateOrderInfo$) then) =
      _$UpdateOrderInfo$CopyWithImpl<$Res>;
  @override
  $Res call(
      {AddressPoint address,
      BuiltList<CartItem> products,
      double total,
      PaymentMethod methodOfPayment,
      String companyId,
      String instructions});
}

/// @nodoc
class _$UpdateOrderInfo$CopyWithImpl<$Res>
    extends _$UpdateOrderInfoCopyWithImpl<$Res>
    implements $UpdateOrderInfo$CopyWith<$Res> {
  _$UpdateOrderInfo$CopyWithImpl(
      UpdateOrderInfo$ _value, $Res Function(UpdateOrderInfo$) _then)
      : super(_value, (v) => _then(v as UpdateOrderInfo$));

  @override
  UpdateOrderInfo$ get _value => super._value as UpdateOrderInfo$;

  @override
  $Res call({
    Object address = freezed,
    Object products = freezed,
    Object total = freezed,
    Object methodOfPayment = freezed,
    Object companyId = freezed,
    Object instructions = freezed,
  }) {
    return _then(UpdateOrderInfo$(
      address: address == freezed ? _value.address : address as AddressPoint,
      products: products == freezed
          ? _value.products
          : products as BuiltList<CartItem>,
      total: total == freezed ? _value.total : total as double,
      methodOfPayment: methodOfPayment == freezed
          ? _value.methodOfPayment
          : methodOfPayment as PaymentMethod,
      companyId: companyId == freezed ? _value.companyId : companyId as String,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions as String,
    ));
  }
}

/// @nodoc
class _$UpdateOrderInfo$ implements UpdateOrderInfo$ {
  const _$UpdateOrderInfo$(
      {this.address,
      this.products,
      this.total,
      this.methodOfPayment,
      this.companyId,
      this.instructions});

  @override
  final AddressPoint address;
  @override
  final BuiltList<CartItem> products;
  @override
  final double total;
  @override
  final PaymentMethod methodOfPayment;
  @override
  final String companyId;
  @override
  final String instructions;

  @override
  String toString() {
    return 'UpdateOrderInfo(address: $address, products: $products, total: $total, methodOfPayment: $methodOfPayment, companyId: $companyId, instructions: $instructions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateOrderInfo$ &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.methodOfPayment, methodOfPayment) ||
                const DeepCollectionEquality()
                    .equals(other.methodOfPayment, methodOfPayment)) &&
            (identical(other.companyId, companyId) ||
                const DeepCollectionEquality()
                    .equals(other.companyId, companyId)) &&
            (identical(other.instructions, instructions) ||
                const DeepCollectionEquality()
                    .equals(other.instructions, instructions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(products) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(methodOfPayment) ^
      const DeepCollectionEquality().hash(companyId) ^
      const DeepCollectionEquality().hash(instructions);

  @override
  $UpdateOrderInfo$CopyWith<UpdateOrderInfo$> get copyWith =>
      _$UpdateOrderInfo$CopyWithImpl<UpdateOrderInfo$>(this, _$identity);
}

abstract class UpdateOrderInfo$ implements UpdateOrderInfo {
  const factory UpdateOrderInfo$(
      {AddressPoint address,
      BuiltList<CartItem> products,
      double total,
      PaymentMethod methodOfPayment,
      String companyId,
      String instructions}) = _$UpdateOrderInfo$;

  @override
  AddressPoint get address;
  @override
  BuiltList<CartItem> get products;
  @override
  double get total;
  @override
  PaymentMethod get methodOfPayment;
  @override
  String get companyId;
  @override
  String get instructions;
  @override
  $UpdateOrderInfo$CopyWith<UpdateOrderInfo$> get copyWith;
}

/// @nodoc
class _$CreateOrderTearOff {
  const _$CreateOrderTearOff();

// ignore: unused_element
  CreateOrder$ call({@required void Function(AppAction) response}) {
    return CreateOrder$(
      response: response,
    );
  }

// ignore: unused_element
  CreateOrderSuccessful successful() {
    return const CreateOrderSuccessful();
  }

// ignore: unused_element
  CreateOrderError error(Object error) {
    return CreateOrderError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CreateOrder = _$CreateOrderTearOff();

/// @nodoc
mixin _$CreateOrder {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CreateOrder$ value), {
    @required Result successful(CreateOrderSuccessful value),
    @required Result error(CreateOrderError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreateOrder$ value), {
    Result successful(CreateOrderSuccessful value),
    Result error(CreateOrderError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CreateOrderCopyWith<$Res> {
  factory $CreateOrderCopyWith(
          CreateOrder value, $Res Function(CreateOrder) then) =
      _$CreateOrderCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateOrderCopyWithImpl<$Res> implements $CreateOrderCopyWith<$Res> {
  _$CreateOrderCopyWithImpl(this._value, this._then);

  final CreateOrder _value;
  // ignore: unused_field
  final $Res Function(CreateOrder) _then;
}

/// @nodoc
abstract class $CreateOrder$CopyWith<$Res> {
  factory $CreateOrder$CopyWith(
          CreateOrder$ value, $Res Function(CreateOrder$) then) =
      _$CreateOrder$CopyWithImpl<$Res>;
  $Res call({void Function(AppAction) response});
}

/// @nodoc
class _$CreateOrder$CopyWithImpl<$Res> extends _$CreateOrderCopyWithImpl<$Res>
    implements $CreateOrder$CopyWith<$Res> {
  _$CreateOrder$CopyWithImpl(
      CreateOrder$ _value, $Res Function(CreateOrder$) _then)
      : super(_value, (v) => _then(v as CreateOrder$));

  @override
  CreateOrder$ get _value => super._value as CreateOrder$;

  @override
  $Res call({
    Object response = freezed,
  }) {
    return _then(CreateOrder$(
      response: response == freezed
          ? _value.response
          : response as void Function(AppAction),
    ));
  }
}

/// @nodoc
class _$CreateOrder$ implements CreateOrder$ {
  const _$CreateOrder$({@required this.response}) : assert(response != null);

  @override
  final void Function(AppAction) response;

  @override
  String toString() {
    return 'CreateOrder(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateOrder$ &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @override
  $CreateOrder$CopyWith<CreateOrder$> get copyWith =>
      _$CreateOrder$CopyWithImpl<CreateOrder$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(response);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CreateOrder$ value), {
    @required Result successful(CreateOrderSuccessful value),
    @required Result error(CreateOrderError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreateOrder$ value), {
    Result successful(CreateOrderSuccessful value),
    Result error(CreateOrderError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CreateOrder$ implements CreateOrder {
  const factory CreateOrder$({@required void Function(AppAction) response}) =
      _$CreateOrder$;

  void Function(AppAction) get response;
  $CreateOrder$CopyWith<CreateOrder$> get copyWith;
}

/// @nodoc
abstract class $CreateOrderSuccessfulCopyWith<$Res> {
  factory $CreateOrderSuccessfulCopyWith(CreateOrderSuccessful value,
          $Res Function(CreateOrderSuccessful) then) =
      _$CreateOrderSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateOrderSuccessfulCopyWithImpl<$Res>
    extends _$CreateOrderCopyWithImpl<$Res>
    implements $CreateOrderSuccessfulCopyWith<$Res> {
  _$CreateOrderSuccessfulCopyWithImpl(
      CreateOrderSuccessful _value, $Res Function(CreateOrderSuccessful) _then)
      : super(_value, (v) => _then(v as CreateOrderSuccessful));

  @override
  CreateOrderSuccessful get _value => super._value as CreateOrderSuccessful;
}

/// @nodoc
class _$CreateOrderSuccessful implements CreateOrderSuccessful {
  const _$CreateOrderSuccessful();

  @override
  String toString() {
    return 'CreateOrder.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CreateOrderSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CreateOrder$ value), {
    @required Result successful(CreateOrderSuccessful value),
    @required Result error(CreateOrderError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreateOrder$ value), {
    Result successful(CreateOrderSuccessful value),
    Result error(CreateOrderError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CreateOrderSuccessful implements CreateOrder {
  const factory CreateOrderSuccessful() = _$CreateOrderSuccessful;
}

/// @nodoc
abstract class $CreateOrderErrorCopyWith<$Res> {
  factory $CreateOrderErrorCopyWith(
          CreateOrderError value, $Res Function(CreateOrderError) then) =
      _$CreateOrderErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$CreateOrderErrorCopyWithImpl<$Res>
    extends _$CreateOrderCopyWithImpl<$Res>
    implements $CreateOrderErrorCopyWith<$Res> {
  _$CreateOrderErrorCopyWithImpl(
      CreateOrderError _value, $Res Function(CreateOrderError) _then)
      : super(_value, (v) => _then(v as CreateOrderError));

  @override
  CreateOrderError get _value => super._value as CreateOrderError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(CreateOrderError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$CreateOrderError implements CreateOrderError {
  const _$CreateOrderError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'CreateOrder.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateOrderError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $CreateOrderErrorCopyWith<CreateOrderError> get copyWith =>
      _$CreateOrderErrorCopyWithImpl<CreateOrderError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CreateOrder$ value), {
    @required Result successful(CreateOrderSuccessful value),
    @required Result error(CreateOrderError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreateOrder$ value), {
    Result successful(CreateOrderSuccessful value),
    Result error(CreateOrderError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateOrderError implements CreateOrder, ErrorAction {
  const factory CreateOrderError(Object error) = _$CreateOrderError;

  Object get error;
  $CreateOrderErrorCopyWith<CreateOrderError> get copyWith;
}
