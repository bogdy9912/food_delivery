// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'auth',
      serializers.serialize(object.auth,
          specifiedType: const FullType(AuthState)),
      'companyState',
      serializers.serialize(object.companyState,
          specifiedType: const FullType(CompanyState)),
      'ordersState',
      serializers.serialize(object.ordersState,
          specifiedType: const FullType(OrdersState)),
    ];

    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'auth':
          result.auth.replace(serializers.deserialize(value,
              specifiedType: const FullType(AuthState))! as AuthState);
          break;
        case 'companyState':
          result.companyState.replace(serializers.deserialize(value,
              specifiedType: const FullType(CompanyState))! as CompanyState);
          break;
        case 'ordersState':
          result.ordersState.replace(serializers.deserialize(value,
              specifiedType: const FullType(OrdersState))! as OrdersState);
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final AuthState auth;
  @override
  final CompanyState companyState;
  @override
  final OrdersState ordersState;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {required this.auth,
      required this.companyState,
      required this.ordersState})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(auth, 'AppState', 'auth');
    BuiltValueNullFieldError.checkNotNull(
        companyState, 'AppState', 'companyState');
    BuiltValueNullFieldError.checkNotNull(
        ordersState, 'AppState', 'ordersState');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        auth == other.auth &&
        companyState == other.companyState &&
        ordersState == other.ordersState;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, auth.hashCode), companyState.hashCode),
        ordersState.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('auth', auth)
          ..add('companyState', companyState)
          ..add('ordersState', ordersState))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  AuthStateBuilder? _auth;
  AuthStateBuilder get auth => _$this._auth ??= new AuthStateBuilder();
  set auth(AuthStateBuilder? auth) => _$this._auth = auth;

  CompanyStateBuilder? _companyState;
  CompanyStateBuilder get companyState =>
      _$this._companyState ??= new CompanyStateBuilder();
  set companyState(CompanyStateBuilder? companyState) =>
      _$this._companyState = companyState;

  OrdersStateBuilder? _ordersState;
  OrdersStateBuilder get ordersState =>
      _$this._ordersState ??= new OrdersStateBuilder();
  set ordersState(OrdersStateBuilder? ordersState) =>
      _$this._ordersState = ordersState;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _auth = $v.auth.toBuilder();
      _companyState = $v.companyState.toBuilder();
      _ordersState = $v.ordersState.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              auth: auth.build(),
              companyState: companyState.build(),
              ordersState: ordersState.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'auth';
        auth.build();
        _$failedField = 'companyState';
        companyState.build();
        _$failedField = 'ordersState';
        ordersState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
