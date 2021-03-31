// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of auth_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginTearOff {
  const _$LoginTearOff();

  Login$ call({required String email, required String password}) {
    return Login$(
      email: email,
      password: password,
    );
  }

  LoginSuccessful successful(AppUser user) {
    return LoginSuccessful(
      user,
    );
  }

  LoginError error(Object error) {
    return LoginError(
      error,
    );
  }
}

/// @nodoc
const $Login = _$LoginTearOff();

/// @nodoc
mixin _$Login {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Login$ value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Login$ value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginCopyWithImpl<$Res> implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(this._value, this._then);

  final Login _value;
  // ignore: unused_field
  final $Res Function(Login) _then;
}

/// @nodoc
abstract class $Login$CopyWith<$Res> {
  factory $Login$CopyWith(Login$ value, $Res Function(Login$) then) =
      _$Login$CopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$Login$CopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $Login$CopyWith<$Res> {
  _$Login$CopyWithImpl(Login$ _value, $Res Function(Login$) _then)
      : super(_value, (v) => _then(v as Login$));

  @override
  Login$ get _value => super._value as Login$;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(Login$(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$Login$ implements Login$ {
  _$Login$({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'Login(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Login$ &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  $Login$CopyWith<Login$> get copyWith =>
      _$Login$CopyWithImpl<Login$>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error) error,
  }) {
    return $default(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Login$ value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Login$ value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Login$ implements Login {
  factory Login$({required String email, required String password}) = _$Login$;

  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Login$CopyWith<Login$> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginSuccessfulCopyWith<$Res> {
  factory $LoginSuccessfulCopyWith(
          LoginSuccessful value, $Res Function(LoginSuccessful) then) =
      _$LoginSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});
}

/// @nodoc
class _$LoginSuccessfulCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $LoginSuccessfulCopyWith<$Res> {
  _$LoginSuccessfulCopyWithImpl(
      LoginSuccessful _value, $Res Function(LoginSuccessful) _then)
      : super(_value, (v) => _then(v as LoginSuccessful));

  @override
  LoginSuccessful get _value => super._value as LoginSuccessful;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(LoginSuccessful(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }
}

/// @nodoc
class _$LoginSuccessful implements LoginSuccessful {
  _$LoginSuccessful(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'Login.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $LoginSuccessfulCopyWith<LoginSuccessful> get copyWith =>
      _$LoginSuccessfulCopyWithImpl<LoginSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Login$ value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Login$ value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LoginSuccessful implements Login {
  factory LoginSuccessful(AppUser user) = _$LoginSuccessful;

  AppUser get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginSuccessfulCopyWith<LoginSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginErrorCopyWith<$Res> {
  factory $LoginErrorCopyWith(
          LoginError value, $Res Function(LoginError) then) =
      _$LoginErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$LoginErrorCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $LoginErrorCopyWith<$Res> {
  _$LoginErrorCopyWithImpl(LoginError _value, $Res Function(LoginError) _then)
      : super(_value, (v) => _then(v as LoginError));

  @override
  LoginError get _value => super._value as LoginError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(LoginError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$LoginError implements LoginError {
  _$LoginError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'Login.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $LoginErrorCopyWith<LoginError> get copyWith =>
      _$LoginErrorCopyWithImpl<LoginError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Login$ value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Login$ value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginError implements Login, ErrorAction {
  factory LoginError(Object error) = _$LoginError;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginErrorCopyWith<LoginError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SignUpTearOff {
  const _$SignUpTearOff();

  SignUp$ call({required void Function(AppAction) response}) {
    return SignUp$(
      response: response,
    );
  }

  SignUpSuccessful successful(AppUser user) {
    return SignUpSuccessful(
      user,
    );
  }

  SignUpError error(Object error) {
    return SignUpError(
      error,
    );
  }
}

/// @nodoc
const $SignUp = _$SignUpTearOff();

/// @nodoc
mixin _$SignUp {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(void Function(AppAction) response) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(void Function(AppAction) response)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignUp$ value) $default, {
    required TResult Function(SignUpSuccessful value) successful,
    required TResult Function(SignUpError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignUp$ value)? $default, {
    TResult Function(SignUpSuccessful value)? successful,
    TResult Function(SignUpError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpCopyWith<$Res> {
  factory $SignUpCopyWith(SignUp value, $Res Function(SignUp) then) =
      _$SignUpCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpCopyWithImpl<$Res> implements $SignUpCopyWith<$Res> {
  _$SignUpCopyWithImpl(this._value, this._then);

  final SignUp _value;
  // ignore: unused_field
  final $Res Function(SignUp) _then;
}

/// @nodoc
abstract class $SignUp$CopyWith<$Res> {
  factory $SignUp$CopyWith(SignUp$ value, $Res Function(SignUp$) then) =
      _$SignUp$CopyWithImpl<$Res>;
  $Res call({void Function(AppAction) response});
}

/// @nodoc
class _$SignUp$CopyWithImpl<$Res> extends _$SignUpCopyWithImpl<$Res>
    implements $SignUp$CopyWith<$Res> {
  _$SignUp$CopyWithImpl(SignUp$ _value, $Res Function(SignUp$) _then)
      : super(_value, (v) => _then(v as SignUp$));

  @override
  SignUp$ get _value => super._value as SignUp$;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(SignUp$(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as void Function(AppAction),
    ));
  }
}

/// @nodoc
class _$SignUp$ implements SignUp$ {
  const _$SignUp$({required this.response});

  @override
  final void Function(AppAction) response;

  @override
  String toString() {
    return 'SignUp(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUp$ &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  $SignUp$CopyWith<SignUp$> get copyWith =>
      _$SignUp$CopyWithImpl<SignUp$>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(void Function(AppAction) response) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error) error,
  }) {
    return $default(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(void Function(AppAction) response)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignUp$ value) $default, {
    required TResult Function(SignUpSuccessful value) successful,
    required TResult Function(SignUpError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignUp$ value)? $default, {
    TResult Function(SignUpSuccessful value)? successful,
    TResult Function(SignUpError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SignUp$ implements SignUp {
  const factory SignUp$({required void Function(AppAction) response}) =
      _$SignUp$;

  void Function(AppAction) get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUp$CopyWith<SignUp$> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpSuccessfulCopyWith<$Res> {
  factory $SignUpSuccessfulCopyWith(
          SignUpSuccessful value, $Res Function(SignUpSuccessful) then) =
      _$SignUpSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});
}

/// @nodoc
class _$SignUpSuccessfulCopyWithImpl<$Res> extends _$SignUpCopyWithImpl<$Res>
    implements $SignUpSuccessfulCopyWith<$Res> {
  _$SignUpSuccessfulCopyWithImpl(
      SignUpSuccessful _value, $Res Function(SignUpSuccessful) _then)
      : super(_value, (v) => _then(v as SignUpSuccessful));

  @override
  SignUpSuccessful get _value => super._value as SignUpSuccessful;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(SignUpSuccessful(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }
}

/// @nodoc
class _$SignUpSuccessful implements SignUpSuccessful {
  const _$SignUpSuccessful(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'SignUp.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUpSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $SignUpSuccessfulCopyWith<SignUpSuccessful> get copyWith =>
      _$SignUpSuccessfulCopyWithImpl<SignUpSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(void Function(AppAction) response) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(void Function(AppAction) response)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignUp$ value) $default, {
    required TResult Function(SignUpSuccessful value) successful,
    required TResult Function(SignUpError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignUp$ value)? $default, {
    TResult Function(SignUpSuccessful value)? successful,
    TResult Function(SignUpError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SignUpSuccessful implements SignUp {
  const factory SignUpSuccessful(AppUser user) = _$SignUpSuccessful;

  AppUser get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpSuccessfulCopyWith<SignUpSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpErrorCopyWith<$Res> {
  factory $SignUpErrorCopyWith(
          SignUpError value, $Res Function(SignUpError) then) =
      _$SignUpErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$SignUpErrorCopyWithImpl<$Res> extends _$SignUpCopyWithImpl<$Res>
    implements $SignUpErrorCopyWith<$Res> {
  _$SignUpErrorCopyWithImpl(
      SignUpError _value, $Res Function(SignUpError) _then)
      : super(_value, (v) => _then(v as SignUpError));

  @override
  SignUpError get _value => super._value as SignUpError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(SignUpError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$SignUpError implements SignUpError {
  const _$SignUpError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'SignUp.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUpError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $SignUpErrorCopyWith<SignUpError> get copyWith =>
      _$SignUpErrorCopyWithImpl<SignUpError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(void Function(AppAction) response) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(void Function(AppAction) response)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignUp$ value) $default, {
    required TResult Function(SignUpSuccessful value) successful,
    required TResult Function(SignUpError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignUp$ value)? $default, {
    TResult Function(SignUpSuccessful value)? successful,
    TResult Function(SignUpError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignUpError implements SignUp, ErrorAction {
  const factory SignUpError(Object error) = _$SignUpError;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpErrorCopyWith<SignUpError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UpdateRegistrationInfoTearOff {
  const _$UpdateRegistrationInfoTearOff();

  UpdateRegistrationInfo$ call(
      {String? email, String? password, String? firstName, String? lastName}) {
    return UpdateRegistrationInfo$(
      email: email,
      password: password,
      firstName: firstName,
      lastName: lastName,
    );
  }
}

/// @nodoc
const $UpdateRegistrationInfo = _$UpdateRegistrationInfoTearOff();

/// @nodoc
mixin _$UpdateRegistrationInfo {
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateRegistrationInfoCopyWith<UpdateRegistrationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateRegistrationInfoCopyWith<$Res> {
  factory $UpdateRegistrationInfoCopyWith(UpdateRegistrationInfo value,
          $Res Function(UpdateRegistrationInfo) then) =
      _$UpdateRegistrationInfoCopyWithImpl<$Res>;
  $Res call(
      {String? email, String? password, String? firstName, String? lastName});
}

/// @nodoc
class _$UpdateRegistrationInfoCopyWithImpl<$Res>
    implements $UpdateRegistrationInfoCopyWith<$Res> {
  _$UpdateRegistrationInfoCopyWithImpl(this._value, this._then);

  final UpdateRegistrationInfo _value;
  // ignore: unused_field
  final $Res Function(UpdateRegistrationInfo) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $UpdateRegistrationInfo$CopyWith<$Res>
    implements $UpdateRegistrationInfoCopyWith<$Res> {
  factory $UpdateRegistrationInfo$CopyWith(UpdateRegistrationInfo$ value,
          $Res Function(UpdateRegistrationInfo$) then) =
      _$UpdateRegistrationInfo$CopyWithImpl<$Res>;
  @override
  $Res call(
      {String? email, String? password, String? firstName, String? lastName});
}

/// @nodoc
class _$UpdateRegistrationInfo$CopyWithImpl<$Res>
    extends _$UpdateRegistrationInfoCopyWithImpl<$Res>
    implements $UpdateRegistrationInfo$CopyWith<$Res> {
  _$UpdateRegistrationInfo$CopyWithImpl(UpdateRegistrationInfo$ _value,
      $Res Function(UpdateRegistrationInfo$) _then)
      : super(_value, (v) => _then(v as UpdateRegistrationInfo$));

  @override
  UpdateRegistrationInfo$ get _value => super._value as UpdateRegistrationInfo$;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(UpdateRegistrationInfo$(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$UpdateRegistrationInfo$ implements UpdateRegistrationInfo$ {
  const _$UpdateRegistrationInfo$(
      {this.email, this.password, this.firstName, this.lastName});

  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? firstName;
  @override
  final String? lastName;

  @override
  String toString() {
    return 'UpdateRegistrationInfo(email: $email, password: $password, firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateRegistrationInfo$ &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName);

  @JsonKey(ignore: true)
  @override
  $UpdateRegistrationInfo$CopyWith<UpdateRegistrationInfo$> get copyWith =>
      _$UpdateRegistrationInfo$CopyWithImpl<UpdateRegistrationInfo$>(
          this, _$identity);
}

abstract class UpdateRegistrationInfo$ implements UpdateRegistrationInfo {
  const factory UpdateRegistrationInfo$(
      {String? email,
      String? password,
      String? firstName,
      String? lastName}) = _$UpdateRegistrationInfo$;

  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get password => throw _privateConstructorUsedError;
  @override
  String? get firstName => throw _privateConstructorUsedError;
  @override
  String? get lastName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $UpdateRegistrationInfo$CopyWith<UpdateRegistrationInfo$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SignOutTearOff {
  const _$SignOutTearOff();

  SignOut$ call() {
    return const SignOut$();
  }

  SignOutSuccessful successful() {
    return const SignOutSuccessful();
  }

  SignOutError error(Object error) {
    return SignOutError(
      error,
    );
  }
}

/// @nodoc
const $SignOut = _$SignOutTearOff();

/// @nodoc
mixin _$SignOut {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignOut$ value) $default, {
    required TResult Function(SignOutSuccessful value) successful,
    required TResult Function(SignOutError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignOut$ value)? $default, {
    TResult Function(SignOutSuccessful value)? successful,
    TResult Function(SignOutError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignOutCopyWith<$Res> {
  factory $SignOutCopyWith(SignOut value, $Res Function(SignOut) then) =
      _$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutCopyWithImpl<$Res> implements $SignOutCopyWith<$Res> {
  _$SignOutCopyWithImpl(this._value, this._then);

  final SignOut _value;
  // ignore: unused_field
  final $Res Function(SignOut) _then;
}

/// @nodoc
abstract class $SignOut$CopyWith<$Res> {
  factory $SignOut$CopyWith(SignOut$ value, $Res Function(SignOut$) then) =
      _$SignOut$CopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOut$CopyWithImpl<$Res> extends _$SignOutCopyWithImpl<$Res>
    implements $SignOut$CopyWith<$Res> {
  _$SignOut$CopyWithImpl(SignOut$ _value, $Res Function(SignOut$) _then)
      : super(_value, (v) => _then(v as SignOut$));

  @override
  SignOut$ get _value => super._value as SignOut$;
}

/// @nodoc
class _$SignOut$ implements SignOut$ {
  const _$SignOut$();

  @override
  String toString() {
    return 'SignOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOut$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignOut$ value) $default, {
    required TResult Function(SignOutSuccessful value) successful,
    required TResult Function(SignOutError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignOut$ value)? $default, {
    TResult Function(SignOutSuccessful value)? successful,
    TResult Function(SignOutError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SignOut$ implements SignOut {
  const factory SignOut$() = _$SignOut$;
}

/// @nodoc
abstract class $SignOutSuccessfulCopyWith<$Res> {
  factory $SignOutSuccessfulCopyWith(
          SignOutSuccessful value, $Res Function(SignOutSuccessful) then) =
      _$SignOutSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutSuccessfulCopyWithImpl<$Res> extends _$SignOutCopyWithImpl<$Res>
    implements $SignOutSuccessfulCopyWith<$Res> {
  _$SignOutSuccessfulCopyWithImpl(
      SignOutSuccessful _value, $Res Function(SignOutSuccessful) _then)
      : super(_value, (v) => _then(v as SignOutSuccessful));

  @override
  SignOutSuccessful get _value => super._value as SignOutSuccessful;
}

/// @nodoc
class _$SignOutSuccessful implements SignOutSuccessful {
  const _$SignOutSuccessful();

  @override
  String toString() {
    return 'SignOut.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOutSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignOut$ value) $default, {
    required TResult Function(SignOutSuccessful value) successful,
    required TResult Function(SignOutError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignOut$ value)? $default, {
    TResult Function(SignOutSuccessful value)? successful,
    TResult Function(SignOutError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SignOutSuccessful implements SignOut {
  const factory SignOutSuccessful() = _$SignOutSuccessful;
}

/// @nodoc
abstract class $SignOutErrorCopyWith<$Res> {
  factory $SignOutErrorCopyWith(
          SignOutError value, $Res Function(SignOutError) then) =
      _$SignOutErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$SignOutErrorCopyWithImpl<$Res> extends _$SignOutCopyWithImpl<$Res>
    implements $SignOutErrorCopyWith<$Res> {
  _$SignOutErrorCopyWithImpl(
      SignOutError _value, $Res Function(SignOutError) _then)
      : super(_value, (v) => _then(v as SignOutError));

  @override
  SignOutError get _value => super._value as SignOutError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(SignOutError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$SignOutError implements SignOutError {
  const _$SignOutError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'SignOut.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignOutError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $SignOutErrorCopyWith<SignOutError> get copyWith =>
      _$SignOutErrorCopyWithImpl<SignOutError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignOut$ value) $default, {
    required TResult Function(SignOutSuccessful value) successful,
    required TResult Function(SignOutError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignOut$ value)? $default, {
    TResult Function(SignOutSuccessful value)? successful,
    TResult Function(SignOutError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignOutError implements SignOut, ErrorAction {
  const factory SignOutError(Object error) = _$SignOutError;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignOutErrorCopyWith<SignOutError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$InitializeAppTearOff {
  const _$InitializeAppTearOff();

  InitializeApp$ call() {
    return const InitializeApp$();
  }

  InitializeAppSuccessful successful(AppUser user) {
    return InitializeAppSuccessful(
      user,
    );
  }

  InitializeAppError error(Object error) {
    return InitializeAppError(
      error,
    );
  }
}

/// @nodoc
const $InitializeApp = _$InitializeAppTearOff();

/// @nodoc
mixin _$InitializeApp {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeApp$ value) $default, {
    required TResult Function(InitializeAppSuccessful value) successful,
    required TResult Function(InitializeAppError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeApp$ value)? $default, {
    TResult Function(InitializeAppSuccessful value)? successful,
    TResult Function(InitializeAppError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializeAppCopyWith<$Res> {
  factory $InitializeAppCopyWith(
          InitializeApp value, $Res Function(InitializeApp) then) =
      _$InitializeAppCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppCopyWith<$Res> {
  _$InitializeAppCopyWithImpl(this._value, this._then);

  final InitializeApp _value;
  // ignore: unused_field
  final $Res Function(InitializeApp) _then;
}

/// @nodoc
abstract class $InitializeApp$CopyWith<$Res> {
  factory $InitializeApp$CopyWith(
          InitializeApp$ value, $Res Function(InitializeApp$) then) =
      _$InitializeApp$CopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeApp$CopyWithImpl<$Res>
    extends _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeApp$CopyWith<$Res> {
  _$InitializeApp$CopyWithImpl(
      InitializeApp$ _value, $Res Function(InitializeApp$) _then)
      : super(_value, (v) => _then(v as InitializeApp$));

  @override
  InitializeApp$ get _value => super._value as InitializeApp$;
}

/// @nodoc
class _$InitializeApp$ implements InitializeApp$ {
  const _$InitializeApp$();

  @override
  String toString() {
    return 'InitializeApp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitializeApp$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeApp$ value) $default, {
    required TResult Function(InitializeAppSuccessful value) successful,
    required TResult Function(InitializeAppError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeApp$ value)? $default, {
    TResult Function(InitializeAppSuccessful value)? successful,
    TResult Function(InitializeAppError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class InitializeApp$ implements InitializeApp {
  const factory InitializeApp$() = _$InitializeApp$;
}

/// @nodoc
abstract class $InitializeAppSuccessfulCopyWith<$Res> {
  factory $InitializeAppSuccessfulCopyWith(InitializeAppSuccessful value,
          $Res Function(InitializeAppSuccessful) then) =
      _$InitializeAppSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});
}

/// @nodoc
class _$InitializeAppSuccessfulCopyWithImpl<$Res>
    extends _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppSuccessfulCopyWith<$Res> {
  _$InitializeAppSuccessfulCopyWithImpl(InitializeAppSuccessful _value,
      $Res Function(InitializeAppSuccessful) _then)
      : super(_value, (v) => _then(v as InitializeAppSuccessful));

  @override
  InitializeAppSuccessful get _value => super._value as InitializeAppSuccessful;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(InitializeAppSuccessful(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }
}

/// @nodoc
class _$InitializeAppSuccessful implements InitializeAppSuccessful {
  const _$InitializeAppSuccessful(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'InitializeApp.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitializeAppSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $InitializeAppSuccessfulCopyWith<InitializeAppSuccessful> get copyWith =>
      _$InitializeAppSuccessfulCopyWithImpl<InitializeAppSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeApp$ value) $default, {
    required TResult Function(InitializeAppSuccessful value) successful,
    required TResult Function(InitializeAppError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeApp$ value)? $default, {
    TResult Function(InitializeAppSuccessful value)? successful,
    TResult Function(InitializeAppError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class InitializeAppSuccessful implements InitializeApp {
  const factory InitializeAppSuccessful(AppUser user) =
      _$InitializeAppSuccessful;

  AppUser get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitializeAppSuccessfulCopyWith<InitializeAppSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializeAppErrorCopyWith<$Res> {
  factory $InitializeAppErrorCopyWith(
          InitializeAppError value, $Res Function(InitializeAppError) then) =
      _$InitializeAppErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$InitializeAppErrorCopyWithImpl<$Res>
    extends _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppErrorCopyWith<$Res> {
  _$InitializeAppErrorCopyWithImpl(
      InitializeAppError _value, $Res Function(InitializeAppError) _then)
      : super(_value, (v) => _then(v as InitializeAppError));

  @override
  InitializeAppError get _value => super._value as InitializeAppError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(InitializeAppError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$InitializeAppError implements InitializeAppError {
  const _$InitializeAppError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'InitializeApp.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitializeAppError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $InitializeAppErrorCopyWith<InitializeAppError> get copyWith =>
      _$InitializeAppErrorCopyWithImpl<InitializeAppError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeApp$ value) $default, {
    required TResult Function(InitializeAppSuccessful value) successful,
    required TResult Function(InitializeAppError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeApp$ value)? $default, {
    TResult Function(InitializeAppSuccessful value)? successful,
    TResult Function(InitializeAppError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class InitializeAppError implements InitializeApp, ErrorAction {
  const factory InitializeAppError(Object error) = _$InitializeAppError;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitializeAppErrorCopyWith<InitializeAppError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ForgotPasswordTearOff {
  const _$ForgotPasswordTearOff();

  ForgotPassword$ call(String email) {
    return ForgotPassword$(
      email,
    );
  }

  ForgotPasswordSuccessful successful() {
    return const ForgotPasswordSuccessful();
  }

  ForgotPasswordError error(Object error) {
    return ForgotPasswordError(
      error,
    );
  }
}

/// @nodoc
const $ForgotPassword = _$ForgotPasswordTearOff();

/// @nodoc
mixin _$ForgotPassword {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email) $default, {
    required TResult Function() successful,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email)? $default, {
    TResult Function()? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ForgotPassword$ value) $default, {
    required TResult Function(ForgotPasswordSuccessful value) successful,
    required TResult Function(ForgotPasswordError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ForgotPassword$ value)? $default, {
    TResult Function(ForgotPasswordSuccessful value)? successful,
    TResult Function(ForgotPasswordError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordCopyWith<$Res> {
  factory $ForgotPasswordCopyWith(
          ForgotPassword value, $Res Function(ForgotPassword) then) =
      _$ForgotPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForgotPasswordCopyWithImpl<$Res>
    implements $ForgotPasswordCopyWith<$Res> {
  _$ForgotPasswordCopyWithImpl(this._value, this._then);

  final ForgotPassword _value;
  // ignore: unused_field
  final $Res Function(ForgotPassword) _then;
}

/// @nodoc
abstract class $ForgotPassword$CopyWith<$Res> {
  factory $ForgotPassword$CopyWith(
          ForgotPassword$ value, $Res Function(ForgotPassword$) then) =
      _$ForgotPassword$CopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$ForgotPassword$CopyWithImpl<$Res>
    extends _$ForgotPasswordCopyWithImpl<$Res>
    implements $ForgotPassword$CopyWith<$Res> {
  _$ForgotPassword$CopyWithImpl(
      ForgotPassword$ _value, $Res Function(ForgotPassword$) _then)
      : super(_value, (v) => _then(v as ForgotPassword$));

  @override
  ForgotPassword$ get _value => super._value as ForgotPassword$;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(ForgotPassword$(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$ForgotPassword$ implements ForgotPassword$ {
  const _$ForgotPassword$(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'ForgotPassword(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ForgotPassword$ &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  $ForgotPassword$CopyWith<ForgotPassword$> get copyWith =>
      _$ForgotPassword$CopyWithImpl<ForgotPassword$>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email) $default, {
    required TResult Function() successful,
    required TResult Function(Object error) error,
  }) {
    return $default(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email)? $default, {
    TResult Function()? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ForgotPassword$ value) $default, {
    required TResult Function(ForgotPasswordSuccessful value) successful,
    required TResult Function(ForgotPasswordError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ForgotPassword$ value)? $default, {
    TResult Function(ForgotPasswordSuccessful value)? successful,
    TResult Function(ForgotPasswordError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ForgotPassword$ implements ForgotPassword {
  const factory ForgotPassword$(String email) = _$ForgotPassword$;

  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgotPassword$CopyWith<ForgotPassword$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordSuccessfulCopyWith<$Res> {
  factory $ForgotPasswordSuccessfulCopyWith(ForgotPasswordSuccessful value,
          $Res Function(ForgotPasswordSuccessful) then) =
      _$ForgotPasswordSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForgotPasswordSuccessfulCopyWithImpl<$Res>
    extends _$ForgotPasswordCopyWithImpl<$Res>
    implements $ForgotPasswordSuccessfulCopyWith<$Res> {
  _$ForgotPasswordSuccessfulCopyWithImpl(ForgotPasswordSuccessful _value,
      $Res Function(ForgotPasswordSuccessful) _then)
      : super(_value, (v) => _then(v as ForgotPasswordSuccessful));

  @override
  ForgotPasswordSuccessful get _value =>
      super._value as ForgotPasswordSuccessful;
}

/// @nodoc
class _$ForgotPasswordSuccessful implements ForgotPasswordSuccessful {
  const _$ForgotPasswordSuccessful();

  @override
  String toString() {
    return 'ForgotPassword.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ForgotPasswordSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email) $default, {
    required TResult Function() successful,
    required TResult Function(Object error) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email)? $default, {
    TResult Function()? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ForgotPassword$ value) $default, {
    required TResult Function(ForgotPasswordSuccessful value) successful,
    required TResult Function(ForgotPasswordError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ForgotPassword$ value)? $default, {
    TResult Function(ForgotPasswordSuccessful value)? successful,
    TResult Function(ForgotPasswordError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordSuccessful implements ForgotPassword {
  const factory ForgotPasswordSuccessful() = _$ForgotPasswordSuccessful;
}

/// @nodoc
abstract class $ForgotPasswordErrorCopyWith<$Res> {
  factory $ForgotPasswordErrorCopyWith(
          ForgotPasswordError value, $Res Function(ForgotPasswordError) then) =
      _$ForgotPasswordErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$ForgotPasswordErrorCopyWithImpl<$Res>
    extends _$ForgotPasswordCopyWithImpl<$Res>
    implements $ForgotPasswordErrorCopyWith<$Res> {
  _$ForgotPasswordErrorCopyWithImpl(
      ForgotPasswordError _value, $Res Function(ForgotPasswordError) _then)
      : super(_value, (v) => _then(v as ForgotPasswordError));

  @override
  ForgotPasswordError get _value => super._value as ForgotPasswordError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ForgotPasswordError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$ForgotPasswordError implements ForgotPasswordError {
  const _$ForgotPasswordError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'ForgotPassword.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ForgotPasswordError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ForgotPasswordErrorCopyWith<ForgotPasswordError> get copyWith =>
      _$ForgotPasswordErrorCopyWithImpl<ForgotPasswordError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email) $default, {
    required TResult Function() successful,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email)? $default, {
    TResult Function()? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ForgotPassword$ value) $default, {
    required TResult Function(ForgotPasswordSuccessful value) successful,
    required TResult Function(ForgotPasswordError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ForgotPassword$ value)? $default, {
    TResult Function(ForgotPasswordSuccessful value)? successful,
    TResult Function(ForgotPasswordError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordError implements ForgotPassword, ErrorAction {
  const factory ForgotPasswordError(Object error) = _$ForgotPasswordError;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgotPasswordErrorCopyWith<ForgotPasswordError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UpdateCartTearOff {
  const _$UpdateCartTearOff();

  UpdateCart$ call({Dish? add, Dish? remove, Dish? clearItem}) {
    return UpdateCart$(
      add: add,
      remove: remove,
      clearItem: clearItem,
    );
  }
}

/// @nodoc
const $UpdateCart = _$UpdateCartTearOff();

/// @nodoc
mixin _$UpdateCart {
  Dish? get add => throw _privateConstructorUsedError;
  Dish? get remove => throw _privateConstructorUsedError;
  Dish? get clearItem => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateCartCopyWith<UpdateCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCartCopyWith<$Res> {
  factory $UpdateCartCopyWith(
          UpdateCart value, $Res Function(UpdateCart) then) =
      _$UpdateCartCopyWithImpl<$Res>;
  $Res call({Dish? add, Dish? remove, Dish? clearItem});
}

/// @nodoc
class _$UpdateCartCopyWithImpl<$Res> implements $UpdateCartCopyWith<$Res> {
  _$UpdateCartCopyWithImpl(this._value, this._then);

  final UpdateCart _value;
  // ignore: unused_field
  final $Res Function(UpdateCart) _then;

  @override
  $Res call({
    Object? add = freezed,
    Object? remove = freezed,
    Object? clearItem = freezed,
  }) {
    return _then(_value.copyWith(
      add: add == freezed
          ? _value.add
          : add // ignore: cast_nullable_to_non_nullable
              as Dish?,
      remove: remove == freezed
          ? _value.remove
          : remove // ignore: cast_nullable_to_non_nullable
              as Dish?,
      clearItem: clearItem == freezed
          ? _value.clearItem
          : clearItem // ignore: cast_nullable_to_non_nullable
              as Dish?,
    ));
  }
}

/// @nodoc
abstract class $UpdateCart$CopyWith<$Res> implements $UpdateCartCopyWith<$Res> {
  factory $UpdateCart$CopyWith(
          UpdateCart$ value, $Res Function(UpdateCart$) then) =
      _$UpdateCart$CopyWithImpl<$Res>;
  @override
  $Res call({Dish? add, Dish? remove, Dish? clearItem});
}

/// @nodoc
class _$UpdateCart$CopyWithImpl<$Res> extends _$UpdateCartCopyWithImpl<$Res>
    implements $UpdateCart$CopyWith<$Res> {
  _$UpdateCart$CopyWithImpl(
      UpdateCart$ _value, $Res Function(UpdateCart$) _then)
      : super(_value, (v) => _then(v as UpdateCart$));

  @override
  UpdateCart$ get _value => super._value as UpdateCart$;

  @override
  $Res call({
    Object? add = freezed,
    Object? remove = freezed,
    Object? clearItem = freezed,
  }) {
    return _then(UpdateCart$(
      add: add == freezed
          ? _value.add
          : add // ignore: cast_nullable_to_non_nullable
              as Dish?,
      remove: remove == freezed
          ? _value.remove
          : remove // ignore: cast_nullable_to_non_nullable
              as Dish?,
      clearItem: clearItem == freezed
          ? _value.clearItem
          : clearItem // ignore: cast_nullable_to_non_nullable
              as Dish?,
    ));
  }
}

/// @nodoc
class _$UpdateCart$ implements UpdateCart$ {
  const _$UpdateCart$({this.add, this.remove, this.clearItem});

  @override
  final Dish? add;
  @override
  final Dish? remove;
  @override
  final Dish? clearItem;

  @override
  String toString() {
    return 'UpdateCart(add: $add, remove: $remove, clearItem: $clearItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateCart$ &&
            (identical(other.add, add) ||
                const DeepCollectionEquality().equals(other.add, add)) &&
            (identical(other.remove, remove) ||
                const DeepCollectionEquality().equals(other.remove, remove)) &&
            (identical(other.clearItem, clearItem) ||
                const DeepCollectionEquality()
                    .equals(other.clearItem, clearItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(add) ^
      const DeepCollectionEquality().hash(remove) ^
      const DeepCollectionEquality().hash(clearItem);

  @JsonKey(ignore: true)
  @override
  $UpdateCart$CopyWith<UpdateCart$> get copyWith =>
      _$UpdateCart$CopyWithImpl<UpdateCart$>(this, _$identity);
}

abstract class UpdateCart$ implements UpdateCart {
  const factory UpdateCart$({Dish? add, Dish? remove, Dish? clearItem}) =
      _$UpdateCart$;

  @override
  Dish? get add => throw _privateConstructorUsedError;
  @override
  Dish? get remove => throw _privateConstructorUsedError;
  @override
  Dish? get clearItem => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $UpdateCart$CopyWith<UpdateCart$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UpdateProfileInfoTearOff {
  const _$UpdateProfileInfoTearOff();

  UpdateProfileInfo$ call(
      {String? lastName, String? firstName, String? telephone}) {
    return UpdateProfileInfo$(
      lastName: lastName,
      firstName: firstName,
      telephone: telephone,
    );
  }

  UpdateProfileInfoSuccessful successful(
      {String? lastName, String? firstName, String? telephone}) {
    return UpdateProfileInfoSuccessful(
      lastName: lastName,
      firstName: firstName,
      telephone: telephone,
    );
  }

  UpdateProfileInfoError error(Object error) {
    return UpdateProfileInfoError(
      error,
    );
  }
}

/// @nodoc
const $UpdateProfileInfo = _$UpdateProfileInfoTearOff();

/// @nodoc
mixin _$UpdateProfileInfo {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? lastName, String? firstName, String? telephone)
        $default, {
    required TResult Function(
            String? lastName, String? firstName, String? telephone)
        successful,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? lastName, String? firstName, String? telephone)?
        $default, {
    TResult Function(String? lastName, String? firstName, String? telephone)?
        successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateProfileInfo$ value) $default, {
    required TResult Function(UpdateProfileInfoSuccessful value) successful,
    required TResult Function(UpdateProfileInfoError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateProfileInfo$ value)? $default, {
    TResult Function(UpdateProfileInfoSuccessful value)? successful,
    TResult Function(UpdateProfileInfoError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileInfoCopyWith<$Res> {
  factory $UpdateProfileInfoCopyWith(
          UpdateProfileInfo value, $Res Function(UpdateProfileInfo) then) =
      _$UpdateProfileInfoCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateProfileInfoCopyWithImpl<$Res>
    implements $UpdateProfileInfoCopyWith<$Res> {
  _$UpdateProfileInfoCopyWithImpl(this._value, this._then);

  final UpdateProfileInfo _value;
  // ignore: unused_field
  final $Res Function(UpdateProfileInfo) _then;
}

/// @nodoc
abstract class $UpdateProfileInfo$CopyWith<$Res> {
  factory $UpdateProfileInfo$CopyWith(
          UpdateProfileInfo$ value, $Res Function(UpdateProfileInfo$) then) =
      _$UpdateProfileInfo$CopyWithImpl<$Res>;
  $Res call({String? lastName, String? firstName, String? telephone});
}

/// @nodoc
class _$UpdateProfileInfo$CopyWithImpl<$Res>
    extends _$UpdateProfileInfoCopyWithImpl<$Res>
    implements $UpdateProfileInfo$CopyWith<$Res> {
  _$UpdateProfileInfo$CopyWithImpl(
      UpdateProfileInfo$ _value, $Res Function(UpdateProfileInfo$) _then)
      : super(_value, (v) => _then(v as UpdateProfileInfo$));

  @override
  UpdateProfileInfo$ get _value => super._value as UpdateProfileInfo$;

  @override
  $Res call({
    Object? lastName = freezed,
    Object? firstName = freezed,
    Object? telephone = freezed,
  }) {
    return _then(UpdateProfileInfo$(
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      telephone: telephone == freezed
          ? _value.telephone
          : telephone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$UpdateProfileInfo$ implements UpdateProfileInfo$ {
  const _$UpdateProfileInfo$({this.lastName, this.firstName, this.telephone});

  @override
  final String? lastName;
  @override
  final String? firstName;
  @override
  final String? telephone;

  @override
  String toString() {
    return 'UpdateProfileInfo(lastName: $lastName, firstName: $firstName, telephone: $telephone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateProfileInfo$ &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.telephone, telephone) ||
                const DeepCollectionEquality()
                    .equals(other.telephone, telephone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(telephone);

  @JsonKey(ignore: true)
  @override
  $UpdateProfileInfo$CopyWith<UpdateProfileInfo$> get copyWith =>
      _$UpdateProfileInfo$CopyWithImpl<UpdateProfileInfo$>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? lastName, String? firstName, String? telephone)
        $default, {
    required TResult Function(
            String? lastName, String? firstName, String? telephone)
        successful,
    required TResult Function(Object error) error,
  }) {
    return $default(lastName, firstName, telephone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? lastName, String? firstName, String? telephone)?
        $default, {
    TResult Function(String? lastName, String? firstName, String? telephone)?
        successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(lastName, firstName, telephone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateProfileInfo$ value) $default, {
    required TResult Function(UpdateProfileInfoSuccessful value) successful,
    required TResult Function(UpdateProfileInfoError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateProfileInfo$ value)? $default, {
    TResult Function(UpdateProfileInfoSuccessful value)? successful,
    TResult Function(UpdateProfileInfoError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileInfo$ implements UpdateProfileInfo {
  const factory UpdateProfileInfo$(
      {String? lastName,
      String? firstName,
      String? telephone}) = _$UpdateProfileInfo$;

  String? get lastName => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get telephone => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateProfileInfo$CopyWith<UpdateProfileInfo$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileInfoSuccessfulCopyWith<$Res> {
  factory $UpdateProfileInfoSuccessfulCopyWith(
          UpdateProfileInfoSuccessful value,
          $Res Function(UpdateProfileInfoSuccessful) then) =
      _$UpdateProfileInfoSuccessfulCopyWithImpl<$Res>;
  $Res call({String? lastName, String? firstName, String? telephone});
}

/// @nodoc
class _$UpdateProfileInfoSuccessfulCopyWithImpl<$Res>
    extends _$UpdateProfileInfoCopyWithImpl<$Res>
    implements $UpdateProfileInfoSuccessfulCopyWith<$Res> {
  _$UpdateProfileInfoSuccessfulCopyWithImpl(UpdateProfileInfoSuccessful _value,
      $Res Function(UpdateProfileInfoSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateProfileInfoSuccessful));

  @override
  UpdateProfileInfoSuccessful get _value =>
      super._value as UpdateProfileInfoSuccessful;

  @override
  $Res call({
    Object? lastName = freezed,
    Object? firstName = freezed,
    Object? telephone = freezed,
  }) {
    return _then(UpdateProfileInfoSuccessful(
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      telephone: telephone == freezed
          ? _value.telephone
          : telephone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$UpdateProfileInfoSuccessful implements UpdateProfileInfoSuccessful {
  const _$UpdateProfileInfoSuccessful(
      {this.lastName, this.firstName, this.telephone});

  @override
  final String? lastName;
  @override
  final String? firstName;
  @override
  final String? telephone;

  @override
  String toString() {
    return 'UpdateProfileInfo.successful(lastName: $lastName, firstName: $firstName, telephone: $telephone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateProfileInfoSuccessful &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.telephone, telephone) ||
                const DeepCollectionEquality()
                    .equals(other.telephone, telephone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(telephone);

  @JsonKey(ignore: true)
  @override
  $UpdateProfileInfoSuccessfulCopyWith<UpdateProfileInfoSuccessful>
      get copyWith => _$UpdateProfileInfoSuccessfulCopyWithImpl<
          UpdateProfileInfoSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? lastName, String? firstName, String? telephone)
        $default, {
    required TResult Function(
            String? lastName, String? firstName, String? telephone)
        successful,
    required TResult Function(Object error) error,
  }) {
    return successful(lastName, firstName, telephone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? lastName, String? firstName, String? telephone)?
        $default, {
    TResult Function(String? lastName, String? firstName, String? telephone)?
        successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(lastName, firstName, telephone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateProfileInfo$ value) $default, {
    required TResult Function(UpdateProfileInfoSuccessful value) successful,
    required TResult Function(UpdateProfileInfoError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateProfileInfo$ value)? $default, {
    TResult Function(UpdateProfileInfoSuccessful value)? successful,
    TResult Function(UpdateProfileInfoError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileInfoSuccessful implements UpdateProfileInfo {
  const factory UpdateProfileInfoSuccessful(
      {String? lastName,
      String? firstName,
      String? telephone}) = _$UpdateProfileInfoSuccessful;

  String? get lastName => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get telephone => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateProfileInfoSuccessfulCopyWith<UpdateProfileInfoSuccessful>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileInfoErrorCopyWith<$Res> {
  factory $UpdateProfileInfoErrorCopyWith(UpdateProfileInfoError value,
          $Res Function(UpdateProfileInfoError) then) =
      _$UpdateProfileInfoErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateProfileInfoErrorCopyWithImpl<$Res>
    extends _$UpdateProfileInfoCopyWithImpl<$Res>
    implements $UpdateProfileInfoErrorCopyWith<$Res> {
  _$UpdateProfileInfoErrorCopyWithImpl(UpdateProfileInfoError _value,
      $Res Function(UpdateProfileInfoError) _then)
      : super(_value, (v) => _then(v as UpdateProfileInfoError));

  @override
  UpdateProfileInfoError get _value => super._value as UpdateProfileInfoError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(UpdateProfileInfoError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateProfileInfoError implements UpdateProfileInfoError {
  const _$UpdateProfileInfoError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateProfileInfo.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateProfileInfoError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $UpdateProfileInfoErrorCopyWith<UpdateProfileInfoError> get copyWith =>
      _$UpdateProfileInfoErrorCopyWithImpl<UpdateProfileInfoError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? lastName, String? firstName, String? telephone)
        $default, {
    required TResult Function(
            String? lastName, String? firstName, String? telephone)
        successful,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? lastName, String? firstName, String? telephone)?
        $default, {
    TResult Function(String? lastName, String? firstName, String? telephone)?
        successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateProfileInfo$ value) $default, {
    required TResult Function(UpdateProfileInfoSuccessful value) successful,
    required TResult Function(UpdateProfileInfoError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateProfileInfo$ value)? $default, {
    TResult Function(UpdateProfileInfoSuccessful value)? successful,
    TResult Function(UpdateProfileInfoError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileInfoError
    implements UpdateProfileInfo, ErrorAction {
  const factory UpdateProfileInfoError(Object error) = _$UpdateProfileInfoError;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateProfileInfoErrorCopyWith<UpdateProfileInfoError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UpdateAddressesTearOff {
  const _$UpdateAddressesTearOff();

  UpdateAddresses$ call(
      {String? uid,
      AddressPoint? add,
      AddressPoint? remove,
      AddressPoint? edit}) {
    return UpdateAddresses$(
      uid: uid,
      add: add,
      remove: remove,
      edit: edit,
    );
  }

  UpdateAddressesSuccessful successful(
      {String? uid,
      AddressPoint? add,
      AddressPoint? remove,
      AddressPoint? edit}) {
    return UpdateAddressesSuccessful(
      uid: uid,
      add: add,
      remove: remove,
      edit: edit,
    );
  }

  UpdateAddressesError error(Object error) {
    return UpdateAddressesError(
      error,
    );
  }
}

/// @nodoc
const $UpdateAddresses = _$UpdateAddressesTearOff();

/// @nodoc
mixin _$UpdateAddresses {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? uid, AddressPoint? add, AddressPoint? remove,
            AddressPoint? edit)
        $default, {
    required TResult Function(String? uid, AddressPoint? add,
            AddressPoint? remove, AddressPoint? edit)
        successful,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? uid, AddressPoint? add, AddressPoint? remove,
            AddressPoint? edit)?
        $default, {
    TResult Function(String? uid, AddressPoint? add, AddressPoint? remove,
            AddressPoint? edit)?
        successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateAddresses$ value) $default, {
    required TResult Function(UpdateAddressesSuccessful value) successful,
    required TResult Function(UpdateAddressesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateAddresses$ value)? $default, {
    TResult Function(UpdateAddressesSuccessful value)? successful,
    TResult Function(UpdateAddressesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAddressesCopyWith<$Res> {
  factory $UpdateAddressesCopyWith(
          UpdateAddresses value, $Res Function(UpdateAddresses) then) =
      _$UpdateAddressesCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateAddressesCopyWithImpl<$Res>
    implements $UpdateAddressesCopyWith<$Res> {
  _$UpdateAddressesCopyWithImpl(this._value, this._then);

  final UpdateAddresses _value;
  // ignore: unused_field
  final $Res Function(UpdateAddresses) _then;
}

/// @nodoc
abstract class $UpdateAddresses$CopyWith<$Res> {
  factory $UpdateAddresses$CopyWith(
          UpdateAddresses$ value, $Res Function(UpdateAddresses$) then) =
      _$UpdateAddresses$CopyWithImpl<$Res>;
  $Res call(
      {String? uid,
      AddressPoint? add,
      AddressPoint? remove,
      AddressPoint? edit});
}

/// @nodoc
class _$UpdateAddresses$CopyWithImpl<$Res>
    extends _$UpdateAddressesCopyWithImpl<$Res>
    implements $UpdateAddresses$CopyWith<$Res> {
  _$UpdateAddresses$CopyWithImpl(
      UpdateAddresses$ _value, $Res Function(UpdateAddresses$) _then)
      : super(_value, (v) => _then(v as UpdateAddresses$));

  @override
  UpdateAddresses$ get _value => super._value as UpdateAddresses$;

  @override
  $Res call({
    Object? uid = freezed,
    Object? add = freezed,
    Object? remove = freezed,
    Object? edit = freezed,
  }) {
    return _then(UpdateAddresses$(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      add: add == freezed
          ? _value.add
          : add // ignore: cast_nullable_to_non_nullable
              as AddressPoint?,
      remove: remove == freezed
          ? _value.remove
          : remove // ignore: cast_nullable_to_non_nullable
              as AddressPoint?,
      edit: edit == freezed
          ? _value.edit
          : edit // ignore: cast_nullable_to_non_nullable
              as AddressPoint?,
    ));
  }
}

/// @nodoc
class _$UpdateAddresses$ implements UpdateAddresses$ {
  const _$UpdateAddresses$({this.uid, this.add, this.remove, this.edit});

  @override
  final String? uid;
  @override
  final AddressPoint? add;
  @override
  final AddressPoint? remove;
  @override
  final AddressPoint? edit;

  @override
  String toString() {
    return 'UpdateAddresses(uid: $uid, add: $add, remove: $remove, edit: $edit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateAddresses$ &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.add, add) ||
                const DeepCollectionEquality().equals(other.add, add)) &&
            (identical(other.remove, remove) ||
                const DeepCollectionEquality().equals(other.remove, remove)) &&
            (identical(other.edit, edit) ||
                const DeepCollectionEquality().equals(other.edit, edit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(add) ^
      const DeepCollectionEquality().hash(remove) ^
      const DeepCollectionEquality().hash(edit);

  @JsonKey(ignore: true)
  @override
  $UpdateAddresses$CopyWith<UpdateAddresses$> get copyWith =>
      _$UpdateAddresses$CopyWithImpl<UpdateAddresses$>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? uid, AddressPoint? add, AddressPoint? remove,
            AddressPoint? edit)
        $default, {
    required TResult Function(String? uid, AddressPoint? add,
            AddressPoint? remove, AddressPoint? edit)
        successful,
    required TResult Function(Object error) error,
  }) {
    return $default(uid, add, remove, edit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? uid, AddressPoint? add, AddressPoint? remove,
            AddressPoint? edit)?
        $default, {
    TResult Function(String? uid, AddressPoint? add, AddressPoint? remove,
            AddressPoint? edit)?
        successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(uid, add, remove, edit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateAddresses$ value) $default, {
    required TResult Function(UpdateAddressesSuccessful value) successful,
    required TResult Function(UpdateAddressesError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateAddresses$ value)? $default, {
    TResult Function(UpdateAddressesSuccessful value)? successful,
    TResult Function(UpdateAddressesError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateAddresses$ implements UpdateAddresses {
  const factory UpdateAddresses$(
      {String? uid,
      AddressPoint? add,
      AddressPoint? remove,
      AddressPoint? edit}) = _$UpdateAddresses$;

  String? get uid => throw _privateConstructorUsedError;
  AddressPoint? get add => throw _privateConstructorUsedError;
  AddressPoint? get remove => throw _privateConstructorUsedError;
  AddressPoint? get edit => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateAddresses$CopyWith<UpdateAddresses$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAddressesSuccessfulCopyWith<$Res> {
  factory $UpdateAddressesSuccessfulCopyWith(UpdateAddressesSuccessful value,
          $Res Function(UpdateAddressesSuccessful) then) =
      _$UpdateAddressesSuccessfulCopyWithImpl<$Res>;
  $Res call(
      {String? uid,
      AddressPoint? add,
      AddressPoint? remove,
      AddressPoint? edit});
}

/// @nodoc
class _$UpdateAddressesSuccessfulCopyWithImpl<$Res>
    extends _$UpdateAddressesCopyWithImpl<$Res>
    implements $UpdateAddressesSuccessfulCopyWith<$Res> {
  _$UpdateAddressesSuccessfulCopyWithImpl(UpdateAddressesSuccessful _value,
      $Res Function(UpdateAddressesSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateAddressesSuccessful));

  @override
  UpdateAddressesSuccessful get _value =>
      super._value as UpdateAddressesSuccessful;

  @override
  $Res call({
    Object? uid = freezed,
    Object? add = freezed,
    Object? remove = freezed,
    Object? edit = freezed,
  }) {
    return _then(UpdateAddressesSuccessful(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      add: add == freezed
          ? _value.add
          : add // ignore: cast_nullable_to_non_nullable
              as AddressPoint?,
      remove: remove == freezed
          ? _value.remove
          : remove // ignore: cast_nullable_to_non_nullable
              as AddressPoint?,
      edit: edit == freezed
          ? _value.edit
          : edit // ignore: cast_nullable_to_non_nullable
              as AddressPoint?,
    ));
  }
}

/// @nodoc
class _$UpdateAddressesSuccessful implements UpdateAddressesSuccessful {
  const _$UpdateAddressesSuccessful(
      {this.uid, this.add, this.remove, this.edit});

  @override
  final String? uid;
  @override
  final AddressPoint? add;
  @override
  final AddressPoint? remove;
  @override
  final AddressPoint? edit;

  @override
  String toString() {
    return 'UpdateAddresses.successful(uid: $uid, add: $add, remove: $remove, edit: $edit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateAddressesSuccessful &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.add, add) ||
                const DeepCollectionEquality().equals(other.add, add)) &&
            (identical(other.remove, remove) ||
                const DeepCollectionEquality().equals(other.remove, remove)) &&
            (identical(other.edit, edit) ||
                const DeepCollectionEquality().equals(other.edit, edit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(add) ^
      const DeepCollectionEquality().hash(remove) ^
      const DeepCollectionEquality().hash(edit);

  @JsonKey(ignore: true)
  @override
  $UpdateAddressesSuccessfulCopyWith<UpdateAddressesSuccessful> get copyWith =>
      _$UpdateAddressesSuccessfulCopyWithImpl<UpdateAddressesSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? uid, AddressPoint? add, AddressPoint? remove,
            AddressPoint? edit)
        $default, {
    required TResult Function(String? uid, AddressPoint? add,
            AddressPoint? remove, AddressPoint? edit)
        successful,
    required TResult Function(Object error) error,
  }) {
    return successful(uid, add, remove, edit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? uid, AddressPoint? add, AddressPoint? remove,
            AddressPoint? edit)?
        $default, {
    TResult Function(String? uid, AddressPoint? add, AddressPoint? remove,
            AddressPoint? edit)?
        successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(uid, add, remove, edit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateAddresses$ value) $default, {
    required TResult Function(UpdateAddressesSuccessful value) successful,
    required TResult Function(UpdateAddressesError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateAddresses$ value)? $default, {
    TResult Function(UpdateAddressesSuccessful value)? successful,
    TResult Function(UpdateAddressesError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateAddressesSuccessful implements UpdateAddresses {
  const factory UpdateAddressesSuccessful(
      {String? uid,
      AddressPoint? add,
      AddressPoint? remove,
      AddressPoint? edit}) = _$UpdateAddressesSuccessful;

  String? get uid => throw _privateConstructorUsedError;
  AddressPoint? get add => throw _privateConstructorUsedError;
  AddressPoint? get remove => throw _privateConstructorUsedError;
  AddressPoint? get edit => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateAddressesSuccessfulCopyWith<UpdateAddressesSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAddressesErrorCopyWith<$Res> {
  factory $UpdateAddressesErrorCopyWith(UpdateAddressesError value,
          $Res Function(UpdateAddressesError) then) =
      _$UpdateAddressesErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateAddressesErrorCopyWithImpl<$Res>
    extends _$UpdateAddressesCopyWithImpl<$Res>
    implements $UpdateAddressesErrorCopyWith<$Res> {
  _$UpdateAddressesErrorCopyWithImpl(
      UpdateAddressesError _value, $Res Function(UpdateAddressesError) _then)
      : super(_value, (v) => _then(v as UpdateAddressesError));

  @override
  UpdateAddressesError get _value => super._value as UpdateAddressesError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(UpdateAddressesError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateAddressesError implements UpdateAddressesError {
  const _$UpdateAddressesError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateAddresses.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateAddressesError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $UpdateAddressesErrorCopyWith<UpdateAddressesError> get copyWith =>
      _$UpdateAddressesErrorCopyWithImpl<UpdateAddressesError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? uid, AddressPoint? add, AddressPoint? remove,
            AddressPoint? edit)
        $default, {
    required TResult Function(String? uid, AddressPoint? add,
            AddressPoint? remove, AddressPoint? edit)
        successful,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? uid, AddressPoint? add, AddressPoint? remove,
            AddressPoint? edit)?
        $default, {
    TResult Function(String? uid, AddressPoint? add, AddressPoint? remove,
            AddressPoint? edit)?
        successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateAddresses$ value) $default, {
    required TResult Function(UpdateAddressesSuccessful value) successful,
    required TResult Function(UpdateAddressesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateAddresses$ value)? $default, {
    TResult Function(UpdateAddressesSuccessful value)? successful,
    TResult Function(UpdateAddressesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateAddressesError implements UpdateAddresses, ErrorAction {
  const factory UpdateAddressesError(Object error) = _$UpdateAddressesError;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateAddressesErrorCopyWith<UpdateAddressesError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SetDefaultAddressTearOff {
  const _$SetDefaultAddressTearOff();

  SetDefaultAddress$ call(
      {required AddressPoint address,
      required void Function(AppAction) response}) {
    return SetDefaultAddress$(
      address: address,
      response: response,
    );
  }

  SetDefaultAddressSuccessful successful({required AddressPoint address}) {
    return SetDefaultAddressSuccessful(
      address: address,
    );
  }

  SetDefaultAddressError error(Object error) {
    return SetDefaultAddressError(
      error,
    );
  }
}

/// @nodoc
const $SetDefaultAddress = _$SetDefaultAddressTearOff();

/// @nodoc
mixin _$SetDefaultAddress {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AddressPoint address, void Function(AppAction) response)
        $default, {
    required TResult Function(AddressPoint address) successful,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AddressPoint address, void Function(AppAction) response)?
        $default, {
    TResult Function(AddressPoint address)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SetDefaultAddress$ value) $default, {
    required TResult Function(SetDefaultAddressSuccessful value) successful,
    required TResult Function(SetDefaultAddressError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SetDefaultAddress$ value)? $default, {
    TResult Function(SetDefaultAddressSuccessful value)? successful,
    TResult Function(SetDefaultAddressError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetDefaultAddressCopyWith<$Res> {
  factory $SetDefaultAddressCopyWith(
          SetDefaultAddress value, $Res Function(SetDefaultAddress) then) =
      _$SetDefaultAddressCopyWithImpl<$Res>;
}

/// @nodoc
class _$SetDefaultAddressCopyWithImpl<$Res>
    implements $SetDefaultAddressCopyWith<$Res> {
  _$SetDefaultAddressCopyWithImpl(this._value, this._then);

  final SetDefaultAddress _value;
  // ignore: unused_field
  final $Res Function(SetDefaultAddress) _then;
}

/// @nodoc
abstract class $SetDefaultAddress$CopyWith<$Res> {
  factory $SetDefaultAddress$CopyWith(
          SetDefaultAddress$ value, $Res Function(SetDefaultAddress$) then) =
      _$SetDefaultAddress$CopyWithImpl<$Res>;
  $Res call({AddressPoint address, void Function(AppAction) response});
}

/// @nodoc
class _$SetDefaultAddress$CopyWithImpl<$Res>
    extends _$SetDefaultAddressCopyWithImpl<$Res>
    implements $SetDefaultAddress$CopyWith<$Res> {
  _$SetDefaultAddress$CopyWithImpl(
      SetDefaultAddress$ _value, $Res Function(SetDefaultAddress$) _then)
      : super(_value, (v) => _then(v as SetDefaultAddress$));

  @override
  SetDefaultAddress$ get _value => super._value as SetDefaultAddress$;

  @override
  $Res call({
    Object? address = freezed,
    Object? response = freezed,
  }) {
    return _then(SetDefaultAddress$(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressPoint,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as void Function(AppAction),
    ));
  }
}

/// @nodoc
class _$SetDefaultAddress$ implements SetDefaultAddress$ {
  const _$SetDefaultAddress$({required this.address, required this.response});

  @override
  final AddressPoint address;
  @override
  final void Function(AppAction) response;

  @override
  String toString() {
    return 'SetDefaultAddress(address: $address, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetDefaultAddress$ &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  $SetDefaultAddress$CopyWith<SetDefaultAddress$> get copyWith =>
      _$SetDefaultAddress$CopyWithImpl<SetDefaultAddress$>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AddressPoint address, void Function(AppAction) response)
        $default, {
    required TResult Function(AddressPoint address) successful,
    required TResult Function(Object error) error,
  }) {
    return $default(address, response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AddressPoint address, void Function(AppAction) response)?
        $default, {
    TResult Function(AddressPoint address)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(address, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SetDefaultAddress$ value) $default, {
    required TResult Function(SetDefaultAddressSuccessful value) successful,
    required TResult Function(SetDefaultAddressError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SetDefaultAddress$ value)? $default, {
    TResult Function(SetDefaultAddressSuccessful value)? successful,
    TResult Function(SetDefaultAddressError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SetDefaultAddress$ implements SetDefaultAddress {
  const factory SetDefaultAddress$(
      {required AddressPoint address,
      required void Function(AppAction) response}) = _$SetDefaultAddress$;

  AddressPoint get address => throw _privateConstructorUsedError;
  void Function(AppAction) get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetDefaultAddress$CopyWith<SetDefaultAddress$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetDefaultAddressSuccessfulCopyWith<$Res> {
  factory $SetDefaultAddressSuccessfulCopyWith(
          SetDefaultAddressSuccessful value,
          $Res Function(SetDefaultAddressSuccessful) then) =
      _$SetDefaultAddressSuccessfulCopyWithImpl<$Res>;
  $Res call({AddressPoint address});
}

/// @nodoc
class _$SetDefaultAddressSuccessfulCopyWithImpl<$Res>
    extends _$SetDefaultAddressCopyWithImpl<$Res>
    implements $SetDefaultAddressSuccessfulCopyWith<$Res> {
  _$SetDefaultAddressSuccessfulCopyWithImpl(SetDefaultAddressSuccessful _value,
      $Res Function(SetDefaultAddressSuccessful) _then)
      : super(_value, (v) => _then(v as SetDefaultAddressSuccessful));

  @override
  SetDefaultAddressSuccessful get _value =>
      super._value as SetDefaultAddressSuccessful;

  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(SetDefaultAddressSuccessful(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressPoint,
    ));
  }
}

/// @nodoc
class _$SetDefaultAddressSuccessful implements SetDefaultAddressSuccessful {
  const _$SetDefaultAddressSuccessful({required this.address});

  @override
  final AddressPoint address;

  @override
  String toString() {
    return 'SetDefaultAddress.successful(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetDefaultAddressSuccessful &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(address);

  @JsonKey(ignore: true)
  @override
  $SetDefaultAddressSuccessfulCopyWith<SetDefaultAddressSuccessful>
      get copyWith => _$SetDefaultAddressSuccessfulCopyWithImpl<
          SetDefaultAddressSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AddressPoint address, void Function(AppAction) response)
        $default, {
    required TResult Function(AddressPoint address) successful,
    required TResult Function(Object error) error,
  }) {
    return successful(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AddressPoint address, void Function(AppAction) response)?
        $default, {
    TResult Function(AddressPoint address)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SetDefaultAddress$ value) $default, {
    required TResult Function(SetDefaultAddressSuccessful value) successful,
    required TResult Function(SetDefaultAddressError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SetDefaultAddress$ value)? $default, {
    TResult Function(SetDefaultAddressSuccessful value)? successful,
    TResult Function(SetDefaultAddressError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SetDefaultAddressSuccessful implements SetDefaultAddress {
  const factory SetDefaultAddressSuccessful({required AddressPoint address}) =
      _$SetDefaultAddressSuccessful;

  AddressPoint get address => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetDefaultAddressSuccessfulCopyWith<SetDefaultAddressSuccessful>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetDefaultAddressErrorCopyWith<$Res> {
  factory $SetDefaultAddressErrorCopyWith(SetDefaultAddressError value,
          $Res Function(SetDefaultAddressError) then) =
      _$SetDefaultAddressErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$SetDefaultAddressErrorCopyWithImpl<$Res>
    extends _$SetDefaultAddressCopyWithImpl<$Res>
    implements $SetDefaultAddressErrorCopyWith<$Res> {
  _$SetDefaultAddressErrorCopyWithImpl(SetDefaultAddressError _value,
      $Res Function(SetDefaultAddressError) _then)
      : super(_value, (v) => _then(v as SetDefaultAddressError));

  @override
  SetDefaultAddressError get _value => super._value as SetDefaultAddressError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(SetDefaultAddressError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$SetDefaultAddressError implements SetDefaultAddressError {
  const _$SetDefaultAddressError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'SetDefaultAddress.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetDefaultAddressError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $SetDefaultAddressErrorCopyWith<SetDefaultAddressError> get copyWith =>
      _$SetDefaultAddressErrorCopyWithImpl<SetDefaultAddressError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AddressPoint address, void Function(AppAction) response)
        $default, {
    required TResult Function(AddressPoint address) successful,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AddressPoint address, void Function(AppAction) response)?
        $default, {
    TResult Function(AddressPoint address)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SetDefaultAddress$ value) $default, {
    required TResult Function(SetDefaultAddressSuccessful value) successful,
    required TResult Function(SetDefaultAddressError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SetDefaultAddress$ value)? $default, {
    TResult Function(SetDefaultAddressSuccessful value)? successful,
    TResult Function(SetDefaultAddressError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SetDefaultAddressError
    implements SetDefaultAddress, ErrorAction {
  const factory SetDefaultAddressError(Object error) = _$SetDefaultAddressError;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetDefaultAddressErrorCopyWith<SetDefaultAddressError> get copyWith =>
      throw _privateConstructorUsedError;
}
