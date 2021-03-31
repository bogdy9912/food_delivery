// GENERATED CODE - DO NOT MODIFY BY HAND

part of auth_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuthState> _$authStateSerializer = new _$AuthStateSerializer();
Serializer<AppUser> _$appUserSerializer = new _$AppUserSerializer();
Serializer<RegistrationInfo> _$registrationInfoSerializer =
    new _$RegistrationInfoSerializer();
Serializer<Cart> _$cartSerializer = new _$CartSerializer();
Serializer<CartItem> _$cartItemSerializer = new _$CartItemSerializer();
Serializer<AddressPoint> _$addressPointSerializer =
    new _$AddressPointSerializer();

class _$AuthStateSerializer implements StructuredSerializer<AuthState> {
  @override
  final Iterable<Type> types = const [AuthState, _$AuthState];
  @override
  final String wireName = 'AuthState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AuthState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'info',
      serializers.serialize(object.info,
          specifiedType: const FullType(RegistrationInfo)),
    ];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AppUser)));
    }
    value = object.isLoading;
    if (value != null) {
      result
        ..add('isLoading')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.cart;
    if (value != null) {
      result
        ..add('cart')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Cart)));
    }
    return result;
  }

  @override
  AuthState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(AppUser))! as AppUser);
          break;
        case 'info':
          result.info.replace(serializers.deserialize(value,
                  specifiedType: const FullType(RegistrationInfo))!
              as RegistrationInfo);
          break;
        case 'isLoading':
          result.isLoading = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'cart':
          result.cart.replace(serializers.deserialize(value,
              specifiedType: const FullType(Cart))! as Cart);
          break;
      }
    }

    return result.build();
  }
}

class _$AppUserSerializer implements StructuredSerializer<AppUser> {
  @override
  final Iterable<Type> types = const [AppUser, _$AppUser];
  @override
  final String wireName = 'AppUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'telephone',
      serializers.serialize(object.telephone,
          specifiedType: const FullType(String)),
      'addresses',
      serializers.serialize(object.addresses,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(AddressPoint)])),
    ];
    Object? value;
    value = object.defaultAddress;
    if (value != null) {
      result
        ..add('defaultAddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AddressPoint)));
    }
    return result;
  }

  @override
  AppUser deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'telephone':
          result.telephone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'addresses':
          result.addresses.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(AddressPoint)
              ]))!);
          break;
        case 'defaultAddress':
          result.defaultAddress.replace(serializers.deserialize(value,
              specifiedType: const FullType(AddressPoint))! as AddressPoint);
          break;
      }
    }

    return result.build();
  }
}

class _$RegistrationInfoSerializer
    implements StructuredSerializer<RegistrationInfo> {
  @override
  final Iterable<Type> types = const [RegistrationInfo, _$RegistrationInfo];
  @override
  final String wireName = 'RegistrationInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers, RegistrationInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.firstName;
    if (value != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  RegistrationInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RegistrationInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CartSerializer implements StructuredSerializer<Cart> {
  @override
  final Iterable<Type> types = const [Cart, _$Cart];
  @override
  final String wireName = 'Cart';

  @override
  Iterable<Object?> serialize(Serializers serializers, Cart object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'items',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CartItem)])),
    ];

    return result;
  }

  @override
  Cart deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CartBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CartItem)]))!
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CartItemSerializer implements StructuredSerializer<CartItem> {
  @override
  final Iterable<Type> types = const [CartItem, _$CartItem];
  @override
  final String wireName = 'CartItem';

  @override
  Iterable<Object?> serialize(Serializers serializers, CartItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'quantity',
      serializers.serialize(object.quantity,
          specifiedType: const FullType(int)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(double)),
    ];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mentions;
    if (value != null) {
      result
        ..add('mentions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CartItem deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CartItemBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mentions':
          result.mentions = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AddressPointSerializer implements StructuredSerializer<AddressPoint> {
  @override
  final Iterable<Type> types = const [AddressPoint, _$AddressPoint];
  @override
  final String wireName = 'AddressPoint';

  @override
  Iterable<Object?> serialize(Serializers serializers, AddressPoint object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'contactName',
      serializers.serialize(object.contactName,
          specifiedType: const FullType(String)),
      'contactPhone',
      serializers.serialize(object.contactPhone,
          specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AddressPoint deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddressPointBuilder();

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
        case 'contactName':
          result.contactName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contactPhone':
          result.contactPhone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AuthState extends AuthState {
  @override
  final AppUser? user;
  @override
  final RegistrationInfo info;
  @override
  final bool? isLoading;
  @override
  final Cart? cart;

  factory _$AuthState([void Function(AuthStateBuilder)? updates]) =>
      (new AuthStateBuilder()..update(updates)).build();

  _$AuthState._({this.user, required this.info, this.isLoading, this.cart})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(info, 'AuthState', 'info');
  }

  @override
  AuthState rebuild(void Function(AuthStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthStateBuilder toBuilder() => new AuthStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthState &&
        user == other.user &&
        info == other.info &&
        isLoading == other.isLoading &&
        cart == other.cart;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, user.hashCode), info.hashCode), isLoading.hashCode),
        cart.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthState')
          ..add('user', user)
          ..add('info', info)
          ..add('isLoading', isLoading)
          ..add('cart', cart))
        .toString();
  }
}

class AuthStateBuilder implements Builder<AuthState, AuthStateBuilder> {
  _$AuthState? _$v;

  AppUserBuilder? _user;
  AppUserBuilder get user => _$this._user ??= new AppUserBuilder();
  set user(AppUserBuilder? user) => _$this._user = user;

  RegistrationInfoBuilder? _info;
  RegistrationInfoBuilder get info =>
      _$this._info ??= new RegistrationInfoBuilder();
  set info(RegistrationInfoBuilder? info) => _$this._info = info;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  CartBuilder? _cart;
  CartBuilder get cart => _$this._cart ??= new CartBuilder();
  set cart(CartBuilder? cart) => _$this._cart = cart;

  AuthStateBuilder();

  AuthStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _info = $v.info.toBuilder();
      _isLoading = $v.isLoading;
      _cart = $v.cart?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthState;
  }

  @override
  void update(void Function(AuthStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthState build() {
    _$AuthState _$result;
    try {
      _$result = _$v ??
          new _$AuthState._(
              user: _user?.build(),
              info: info.build(),
              isLoading: isLoading,
              cart: _cart?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'info';
        info.build();

        _$failedField = 'cart';
        _cart?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AuthState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AppUser extends AppUser {
  @override
  final String uid;
  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String telephone;
  @override
  final BuiltMap<String, AddressPoint> addresses;
  @override
  final AddressPoint? defaultAddress;

  factory _$AppUser([void Function(AppUserBuilder)? updates]) =>
      (new AppUserBuilder()..update(updates)).build();

  _$AppUser._(
      {required this.uid,
      required this.email,
      required this.firstName,
      required this.lastName,
      required this.telephone,
      required this.addresses,
      this.defaultAddress})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(uid, 'AppUser', 'uid');
    BuiltValueNullFieldError.checkNotNull(email, 'AppUser', 'email');
    BuiltValueNullFieldError.checkNotNull(firstName, 'AppUser', 'firstName');
    BuiltValueNullFieldError.checkNotNull(lastName, 'AppUser', 'lastName');
    BuiltValueNullFieldError.checkNotNull(telephone, 'AppUser', 'telephone');
    BuiltValueNullFieldError.checkNotNull(addresses, 'AppUser', 'addresses');
  }

  @override
  AppUser rebuild(void Function(AppUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppUserBuilder toBuilder() => new AppUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppUser &&
        uid == other.uid &&
        email == other.email &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        telephone == other.telephone &&
        addresses == other.addresses &&
        defaultAddress == other.defaultAddress;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, uid.hashCode), email.hashCode),
                        firstName.hashCode),
                    lastName.hashCode),
                telephone.hashCode),
            addresses.hashCode),
        defaultAddress.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppUser')
          ..add('uid', uid)
          ..add('email', email)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('telephone', telephone)
          ..add('addresses', addresses)
          ..add('defaultAddress', defaultAddress))
        .toString();
  }
}

class AppUserBuilder implements Builder<AppUser, AppUserBuilder> {
  _$AppUser? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _telephone;
  String? get telephone => _$this._telephone;
  set telephone(String? telephone) => _$this._telephone = telephone;

  MapBuilder<String, AddressPoint>? _addresses;
  MapBuilder<String, AddressPoint> get addresses =>
      _$this._addresses ??= new MapBuilder<String, AddressPoint>();
  set addresses(MapBuilder<String, AddressPoint>? addresses) =>
      _$this._addresses = addresses;

  AddressPointBuilder? _defaultAddress;
  AddressPointBuilder get defaultAddress =>
      _$this._defaultAddress ??= new AddressPointBuilder();
  set defaultAddress(AddressPointBuilder? defaultAddress) =>
      _$this._defaultAddress = defaultAddress;

  AppUserBuilder();

  AppUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _email = $v.email;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _telephone = $v.telephone;
      _addresses = $v.addresses.toBuilder();
      _defaultAddress = $v.defaultAddress?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppUser;
  }

  @override
  void update(void Function(AppUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppUser build() {
    _$AppUser _$result;
    try {
      _$result = _$v ??
          new _$AppUser._(
              uid: BuiltValueNullFieldError.checkNotNull(uid, 'AppUser', 'uid'),
              email: BuiltValueNullFieldError.checkNotNull(
                  email, 'AppUser', 'email'),
              firstName: BuiltValueNullFieldError.checkNotNull(
                  firstName, 'AppUser', 'firstName'),
              lastName: BuiltValueNullFieldError.checkNotNull(
                  lastName, 'AppUser', 'lastName'),
              telephone: BuiltValueNullFieldError.checkNotNull(
                  telephone, 'AppUser', 'telephone'),
              addresses: addresses.build(),
              defaultAddress: _defaultAddress?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addresses';
        addresses.build();
        _$failedField = 'defaultAddress';
        _defaultAddress?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$RegistrationInfo extends RegistrationInfo {
  @override
  final String? email;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? password;

  factory _$RegistrationInfo(
          [void Function(RegistrationInfoBuilder)? updates]) =>
      (new RegistrationInfoBuilder()..update(updates)).build();

  _$RegistrationInfo._(
      {this.email, this.firstName, this.lastName, this.password})
      : super._();

  @override
  RegistrationInfo rebuild(void Function(RegistrationInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegistrationInfoBuilder toBuilder() =>
      new RegistrationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegistrationInfo &&
        email == other.email &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, email.hashCode), firstName.hashCode), lastName.hashCode),
        password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RegistrationInfo')
          ..add('email', email)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('password', password))
        .toString();
  }
}

class RegistrationInfoBuilder
    implements Builder<RegistrationInfo, RegistrationInfoBuilder> {
  _$RegistrationInfo? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  RegistrationInfoBuilder();

  RegistrationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegistrationInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegistrationInfo;
  }

  @override
  void update(void Function(RegistrationInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RegistrationInfo build() {
    final _$result = _$v ??
        new _$RegistrationInfo._(
            email: email,
            firstName: firstName,
            lastName: lastName,
            password: password);
    replace(_$result);
    return _$result;
  }
}

class _$Cart extends Cart {
  @override
  final BuiltList<CartItem> items;
  int? __totalProducts;
  double? __totalAmount;

  factory _$Cart([void Function(CartBuilder)? updates]) =>
      (new CartBuilder()..update(updates)).build();

  _$Cart._({required this.items}) : super._() {
    BuiltValueNullFieldError.checkNotNull(items, 'Cart', 'items');
  }

  @override
  int get totalProducts => __totalProducts ??= super.totalProducts;

  @override
  double get totalAmount => __totalAmount ??= super.totalAmount;

  @override
  Cart rebuild(void Function(CartBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartBuilder toBuilder() => new CartBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Cart && items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(0, items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Cart')..add('items', items))
        .toString();
  }
}

class CartBuilder implements Builder<Cart, CartBuilder> {
  _$Cart? _$v;

  ListBuilder<CartItem>? _items;
  ListBuilder<CartItem> get items =>
      _$this._items ??= new ListBuilder<CartItem>();
  set items(ListBuilder<CartItem>? items) => _$this._items = items;

  CartBuilder();

  CartBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Cart other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Cart;
  }

  @override
  void update(void Function(CartBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Cart build() {
    _$Cart _$result;
    try {
      _$result = _$v ?? new _$Cart._(items: items.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Cart', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CartItem extends CartItem {
  @override
  final String id;
  @override
  final String name;
  @override
  final int quantity;
  @override
  final double price;
  @override
  final String? description;
  @override
  final String? mentions;

  factory _$CartItem([void Function(CartItemBuilder)? updates]) =>
      (new CartItemBuilder()..update(updates)).build();

  _$CartItem._(
      {required this.id,
      required this.name,
      required this.quantity,
      required this.price,
      this.description,
      this.mentions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'CartItem', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'CartItem', 'name');
    BuiltValueNullFieldError.checkNotNull(quantity, 'CartItem', 'quantity');
    BuiltValueNullFieldError.checkNotNull(price, 'CartItem', 'price');
  }

  @override
  CartItem rebuild(void Function(CartItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartItemBuilder toBuilder() => new CartItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartItem &&
        id == other.id &&
        name == other.name &&
        quantity == other.quantity &&
        price == other.price &&
        description == other.description &&
        mentions == other.mentions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), name.hashCode), quantity.hashCode),
                price.hashCode),
            description.hashCode),
        mentions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CartItem')
          ..add('id', id)
          ..add('name', name)
          ..add('quantity', quantity)
          ..add('price', price)
          ..add('description', description)
          ..add('mentions', mentions))
        .toString();
  }
}

class CartItemBuilder implements Builder<CartItem, CartItemBuilder> {
  _$CartItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _mentions;
  String? get mentions => _$this._mentions;
  set mentions(String? mentions) => _$this._mentions = mentions;

  CartItemBuilder();

  CartItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _quantity = $v.quantity;
      _price = $v.price;
      _description = $v.description;
      _mentions = $v.mentions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CartItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CartItem;
  }

  @override
  void update(void Function(CartItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CartItem build() {
    final _$result = _$v ??
        new _$CartItem._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'CartItem', 'id'),
            name:
                BuiltValueNullFieldError.checkNotNull(name, 'CartItem', 'name'),
            quantity: BuiltValueNullFieldError.checkNotNull(
                quantity, 'CartItem', 'quantity'),
            price: BuiltValueNullFieldError.checkNotNull(
                price, 'CartItem', 'price'),
            description: description,
            mentions: mentions);
    replace(_$result);
    return _$result;
  }
}

class _$AddressPoint extends AddressPoint {
  @override
  final String? id;
  @override
  final String contactName;
  @override
  final String contactPhone;
  @override
  final String address;
  @override
  final String city;

  factory _$AddressPoint([void Function(AddressPointBuilder)? updates]) =>
      (new AddressPointBuilder()..update(updates)).build();

  _$AddressPoint._(
      {this.id,
      required this.contactName,
      required this.contactPhone,
      required this.address,
      required this.city})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        contactName, 'AddressPoint', 'contactName');
    BuiltValueNullFieldError.checkNotNull(
        contactPhone, 'AddressPoint', 'contactPhone');
    BuiltValueNullFieldError.checkNotNull(address, 'AddressPoint', 'address');
    BuiltValueNullFieldError.checkNotNull(city, 'AddressPoint', 'city');
  }

  @override
  AddressPoint rebuild(void Function(AddressPointBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressPointBuilder toBuilder() => new AddressPointBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddressPoint &&
        id == other.id &&
        contactName == other.contactName &&
        contactPhone == other.contactPhone &&
        address == other.address &&
        city == other.city;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, id.hashCode), contactName.hashCode),
                contactPhone.hashCode),
            address.hashCode),
        city.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddressPoint')
          ..add('id', id)
          ..add('contactName', contactName)
          ..add('contactPhone', contactPhone)
          ..add('address', address)
          ..add('city', city))
        .toString();
  }
}

class AddressPointBuilder
    implements Builder<AddressPoint, AddressPointBuilder> {
  _$AddressPoint? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _contactName;
  String? get contactName => _$this._contactName;
  set contactName(String? contactName) => _$this._contactName = contactName;

  String? _contactPhone;
  String? get contactPhone => _$this._contactPhone;
  set contactPhone(String? contactPhone) => _$this._contactPhone = contactPhone;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  AddressPointBuilder();

  AddressPointBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _contactName = $v.contactName;
      _contactPhone = $v.contactPhone;
      _address = $v.address;
      _city = $v.city;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddressPoint other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddressPoint;
  }

  @override
  void update(void Function(AddressPointBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddressPoint build() {
    final _$result = _$v ??
        new _$AddressPoint._(
            id: id,
            contactName: BuiltValueNullFieldError.checkNotNull(
                contactName, 'AddressPoint', 'contactName'),
            contactPhone: BuiltValueNullFieldError.checkNotNull(
                contactPhone, 'AddressPoint', 'contactPhone'),
            address: BuiltValueNullFieldError.checkNotNull(
                address, 'AddressPoint', 'address'),
            city: BuiltValueNullFieldError.checkNotNull(
                city, 'AddressPoint', 'city'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
