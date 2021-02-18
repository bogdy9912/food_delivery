// GENERATED CODE - DO NOT MODIFY BY HAND

part of auth_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuthState> _$authStateSerializer = new _$AuthStateSerializer();
Serializer<AppUser> _$appUserSerializer = new _$AppUserSerializer();
Serializer<RegistrationInfo> _$registrationInfoSerializer =
    new _$RegistrationInfoSerializer();

class _$AuthStateSerializer implements StructuredSerializer<AuthState> {
  @override
  final Iterable<Type> types = const [AuthState, _$AuthState];
  @override
  final String wireName = 'AuthState';

  @override
  Iterable<Object> serialize(Serializers serializers, AuthState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'info',
      serializers.serialize(object.info,
          specifiedType: const FullType(RegistrationInfo)),
    ];
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(AppUser)));
    }
    return result;
  }

  @override
  AuthState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(AppUser)) as AppUser);
          break;
        case 'info':
          result.info.replace(serializers.deserialize(value,
                  specifiedType: const FullType(RegistrationInfo))
              as RegistrationInfo);
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
  Iterable<Object> serialize(Serializers serializers, AppUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
    ];
    if (object.firstName != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(object.firstName,
            specifiedType: const FullType(String)));
    }
    if (object.lastName != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(object.lastName,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AppUser deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
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
  Iterable<Object> serialize(Serializers serializers, RegistrationInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.firstName != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(object.firstName,
            specifiedType: const FullType(String)));
    }
    if (object.lastName != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(object.lastName,
            specifiedType: const FullType(String)));
    }
    if (object.password != null) {
      result
        ..add('password')
        ..add(serializers.serialize(object.password,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  RegistrationInfo deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RegistrationInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
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

class _$AuthState extends AuthState {
  @override
  final AppUser user;
  @override
  final RegistrationInfo info;

  factory _$AuthState([void Function(AuthStateBuilder) updates]) =>
      (new AuthStateBuilder()..update(updates)).build();

  _$AuthState._({this.user, this.info}) : super._() {
    if (info == null) {
      throw new BuiltValueNullFieldError('AuthState', 'info');
    }
  }

  @override
  AuthState rebuild(void Function(AuthStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthStateBuilder toBuilder() => new AuthStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthState && user == other.user && info == other.info;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, user.hashCode), info.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthState')
          ..add('user', user)
          ..add('info', info))
        .toString();
  }
}

class AuthStateBuilder implements Builder<AuthState, AuthStateBuilder> {
  _$AuthState _$v;

  AppUserBuilder _user;
  AppUserBuilder get user => _$this._user ??= new AppUserBuilder();
  set user(AppUserBuilder user) => _$this._user = user;

  RegistrationInfoBuilder _info;
  RegistrationInfoBuilder get info =>
      _$this._info ??= new RegistrationInfoBuilder();
  set info(RegistrationInfoBuilder info) => _$this._info = info;

  AuthStateBuilder();

  AuthStateBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user?.toBuilder();
      _info = _$v.info?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthState;
  }

  @override
  void update(void Function(AuthStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthState build() {
    _$AuthState _$result;
    try {
      _$result =
          _$v ?? new _$AuthState._(user: _user?.build(), info: info.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'info';
        info.build();
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

  factory _$AppUser([void Function(AppUserBuilder) updates]) =>
      (new AppUserBuilder()..update(updates)).build();

  _$AppUser._({this.uid, this.email, this.firstName, this.lastName})
      : super._() {
    if (uid == null) {
      throw new BuiltValueNullFieldError('AppUser', 'uid');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('AppUser', 'email');
    }
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
        lastName == other.lastName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, uid.hashCode), email.hashCode), firstName.hashCode),
        lastName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppUser')
          ..add('uid', uid)
          ..add('email', email)
          ..add('firstName', firstName)
          ..add('lastName', lastName))
        .toString();
  }
}

class AppUserBuilder implements Builder<AppUser, AppUserBuilder> {
  _$AppUser _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _firstName;
  String get firstName => _$this._firstName;
  set firstName(String firstName) => _$this._firstName = firstName;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  AppUserBuilder();

  AppUserBuilder get _$this {
    if (_$v != null) {
      _uid = _$v.uid;
      _email = _$v.email;
      _firstName = _$v.firstName;
      _lastName = _$v.lastName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppUser other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppUser;
  }

  @override
  void update(void Function(AppUserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppUser build() {
    final _$result = _$v ??
        new _$AppUser._(
            uid: uid, email: email, firstName: firstName, lastName: lastName);
    replace(_$result);
    return _$result;
  }
}

class _$RegistrationInfo extends RegistrationInfo {
  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String password;

  factory _$RegistrationInfo(
          [void Function(RegistrationInfoBuilder) updates]) =>
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
  _$RegistrationInfo _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _firstName;
  String get firstName => _$this._firstName;
  set firstName(String firstName) => _$this._firstName = firstName;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  RegistrationInfoBuilder();

  RegistrationInfoBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _firstName = _$v.firstName;
      _lastName = _$v.lastName;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegistrationInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RegistrationInfo;
  }

  @override
  void update(void Function(RegistrationInfoBuilder) updates) {
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
