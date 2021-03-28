// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of company_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateCompanyTearOff {
  const _$CreateCompanyTearOff();

  CreateCompany$ call(
      {required String name,
      required double rating,
      required String image,
      required String openHour,
      required String closeHour,
      required String city}) {
    return CreateCompany$(
      name: name,
      rating: rating,
      image: image,
      openHour: openHour,
      closeHour: closeHour,
      city: city,
    );
  }

  CreateCompanySuccessful successful() {
    return const CreateCompanySuccessful();
  }

  CreateCompanyError error(Object error) {
    return CreateCompanyError(
      error,
    );
  }
}

/// @nodoc
const $CreateCompany = _$CreateCompanyTearOff();

/// @nodoc
mixin _$CreateCompany {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, double rating, String image, String openHour,
            String closeHour, String city)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, double rating, String image, String openHour,
            String closeHour, String city)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateCompany$ value) $default, {
    required TResult Function(CreateCompanySuccessful value) successful,
    required TResult Function(CreateCompanyError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateCompany$ value)? $default, {
    TResult Function(CreateCompanySuccessful value)? successful,
    TResult Function(CreateCompanyError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCompanyCopyWith<$Res> {
  factory $CreateCompanyCopyWith(
          CreateCompany value, $Res Function(CreateCompany) then) =
      _$CreateCompanyCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateCompanyCopyWithImpl<$Res>
    implements $CreateCompanyCopyWith<$Res> {
  _$CreateCompanyCopyWithImpl(this._value, this._then);

  final CreateCompany _value;
  // ignore: unused_field
  final $Res Function(CreateCompany) _then;
}

/// @nodoc
abstract class $CreateCompany$CopyWith<$Res> {
  factory $CreateCompany$CopyWith(
          CreateCompany$ value, $Res Function(CreateCompany$) then) =
      _$CreateCompany$CopyWithImpl<$Res>;
  $Res call(
      {String name,
      double rating,
      String image,
      String openHour,
      String closeHour,
      String city});
}

/// @nodoc
class _$CreateCompany$CopyWithImpl<$Res>
    extends _$CreateCompanyCopyWithImpl<$Res>
    implements $CreateCompany$CopyWith<$Res> {
  _$CreateCompany$CopyWithImpl(
      CreateCompany$ _value, $Res Function(CreateCompany$) _then)
      : super(_value, (v) => _then(v as CreateCompany$));

  @override
  CreateCompany$ get _value => super._value as CreateCompany$;

  @override
  $Res call({
    Object? name = freezed,
    Object? rating = freezed,
    Object? image = freezed,
    Object? openHour = freezed,
    Object? closeHour = freezed,
    Object? city = freezed,
  }) {
    return _then(CreateCompany$(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      openHour: openHour == freezed
          ? _value.openHour
          : openHour // ignore: cast_nullable_to_non_nullable
              as String,
      closeHour: closeHour == freezed
          ? _value.closeHour
          : closeHour // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$CreateCompany$ implements CreateCompany$ {
  const _$CreateCompany$(
      {required this.name,
      required this.rating,
      required this.image,
      required this.openHour,
      required this.closeHour,
      required this.city});

  @override
  final String name;
  @override
  final double rating;
  @override
  final String image;
  @override
  final String openHour;
  @override
  final String closeHour;
  @override
  final String city;

  @override
  String toString() {
    return 'CreateCompany(name: $name, rating: $rating, image: $image, openHour: $openHour, closeHour: $closeHour, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateCompany$ &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.openHour, openHour) ||
                const DeepCollectionEquality()
                    .equals(other.openHour, openHour)) &&
            (identical(other.closeHour, closeHour) ||
                const DeepCollectionEquality()
                    .equals(other.closeHour, closeHour)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(openHour) ^
      const DeepCollectionEquality().hash(closeHour) ^
      const DeepCollectionEquality().hash(city);

  @JsonKey(ignore: true)
  @override
  $CreateCompany$CopyWith<CreateCompany$> get copyWith =>
      _$CreateCompany$CopyWithImpl<CreateCompany$>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, double rating, String image, String openHour,
            String closeHour, String city)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error) error,
  }) {
    return $default(name, rating, image, openHour, closeHour, city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, double rating, String image, String openHour,
            String closeHour, String city)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(name, rating, image, openHour, closeHour, city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateCompany$ value) $default, {
    required TResult Function(CreateCompanySuccessful value) successful,
    required TResult Function(CreateCompanyError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateCompany$ value)? $default, {
    TResult Function(CreateCompanySuccessful value)? successful,
    TResult Function(CreateCompanyError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CreateCompany$ implements CreateCompany {
  const factory CreateCompany$(
      {required String name,
      required double rating,
      required String image,
      required String openHour,
      required String closeHour,
      required String city}) = _$CreateCompany$;

  String get name => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get openHour => throw _privateConstructorUsedError;
  String get closeHour => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateCompany$CopyWith<CreateCompany$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCompanySuccessfulCopyWith<$Res> {
  factory $CreateCompanySuccessfulCopyWith(CreateCompanySuccessful value,
          $Res Function(CreateCompanySuccessful) then) =
      _$CreateCompanySuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateCompanySuccessfulCopyWithImpl<$Res>
    extends _$CreateCompanyCopyWithImpl<$Res>
    implements $CreateCompanySuccessfulCopyWith<$Res> {
  _$CreateCompanySuccessfulCopyWithImpl(CreateCompanySuccessful _value,
      $Res Function(CreateCompanySuccessful) _then)
      : super(_value, (v) => _then(v as CreateCompanySuccessful));

  @override
  CreateCompanySuccessful get _value => super._value as CreateCompanySuccessful;
}

/// @nodoc
class _$CreateCompanySuccessful implements CreateCompanySuccessful {
  const _$CreateCompanySuccessful();

  @override
  String toString() {
    return 'CreateCompany.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CreateCompanySuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, double rating, String image, String openHour,
            String closeHour, String city)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, double rating, String image, String openHour,
            String closeHour, String city)?
        $default, {
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
    TResult Function(CreateCompany$ value) $default, {
    required TResult Function(CreateCompanySuccessful value) successful,
    required TResult Function(CreateCompanyError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateCompany$ value)? $default, {
    TResult Function(CreateCompanySuccessful value)? successful,
    TResult Function(CreateCompanyError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CreateCompanySuccessful implements CreateCompany {
  const factory CreateCompanySuccessful() = _$CreateCompanySuccessful;
}

/// @nodoc
abstract class $CreateCompanyErrorCopyWith<$Res> {
  factory $CreateCompanyErrorCopyWith(
          CreateCompanyError value, $Res Function(CreateCompanyError) then) =
      _$CreateCompanyErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$CreateCompanyErrorCopyWithImpl<$Res>
    extends _$CreateCompanyCopyWithImpl<$Res>
    implements $CreateCompanyErrorCopyWith<$Res> {
  _$CreateCompanyErrorCopyWithImpl(
      CreateCompanyError _value, $Res Function(CreateCompanyError) _then)
      : super(_value, (v) => _then(v as CreateCompanyError));

  @override
  CreateCompanyError get _value => super._value as CreateCompanyError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CreateCompanyError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$CreateCompanyError implements CreateCompanyError {
  const _$CreateCompanyError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'CreateCompany.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateCompanyError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CreateCompanyErrorCopyWith<CreateCompanyError> get copyWith =>
      _$CreateCompanyErrorCopyWithImpl<CreateCompanyError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, double rating, String image, String openHour,
            String closeHour, String city)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, double rating, String image, String openHour,
            String closeHour, String city)?
        $default, {
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
    TResult Function(CreateCompany$ value) $default, {
    required TResult Function(CreateCompanySuccessful value) successful,
    required TResult Function(CreateCompanyError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateCompany$ value)? $default, {
    TResult Function(CreateCompanySuccessful value)? successful,
    TResult Function(CreateCompanyError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateCompanyError implements CreateCompany, ErrorAction {
  const factory CreateCompanyError(Object error) = _$CreateCompanyError;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateCompanyErrorCopyWith<CreateCompanyError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetCompaniesTearOff {
  const _$GetCompaniesTearOff();

  GetCompanies$ call() {
    return const GetCompanies$();
  }

  GetCompaniesSuccessful successful(List<Company> companies) {
    return GetCompaniesSuccessful(
      companies,
    );
  }

  GetCompaniesError error(Object error) {
    return GetCompaniesError(
      error,
    );
  }
}

/// @nodoc
const $GetCompanies = _$GetCompaniesTearOff();

/// @nodoc
mixin _$GetCompanies {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Company> companies) successful,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Company> companies)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCompanies$ value) $default, {
    required TResult Function(GetCompaniesSuccessful value) successful,
    required TResult Function(GetCompaniesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCompanies$ value)? $default, {
    TResult Function(GetCompaniesSuccessful value)? successful,
    TResult Function(GetCompaniesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCompaniesCopyWith<$Res> {
  factory $GetCompaniesCopyWith(
          GetCompanies value, $Res Function(GetCompanies) then) =
      _$GetCompaniesCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCompaniesCopyWithImpl<$Res> implements $GetCompaniesCopyWith<$Res> {
  _$GetCompaniesCopyWithImpl(this._value, this._then);

  final GetCompanies _value;
  // ignore: unused_field
  final $Res Function(GetCompanies) _then;
}

/// @nodoc
abstract class $GetCompanies$CopyWith<$Res> {
  factory $GetCompanies$CopyWith(
          GetCompanies$ value, $Res Function(GetCompanies$) then) =
      _$GetCompanies$CopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCompanies$CopyWithImpl<$Res> extends _$GetCompaniesCopyWithImpl<$Res>
    implements $GetCompanies$CopyWith<$Res> {
  _$GetCompanies$CopyWithImpl(
      GetCompanies$ _value, $Res Function(GetCompanies$) _then)
      : super(_value, (v) => _then(v as GetCompanies$));

  @override
  GetCompanies$ get _value => super._value as GetCompanies$;
}

/// @nodoc
class _$GetCompanies$ implements GetCompanies$ {
  const _$GetCompanies$();

  @override
  String toString() {
    return 'GetCompanies()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetCompanies$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Company> companies) successful,
    required TResult Function(Object error) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Company> companies)? successful,
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
    TResult Function(GetCompanies$ value) $default, {
    required TResult Function(GetCompaniesSuccessful value) successful,
    required TResult Function(GetCompaniesError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCompanies$ value)? $default, {
    TResult Function(GetCompaniesSuccessful value)? successful,
    TResult Function(GetCompaniesError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetCompanies$ implements GetCompanies {
  const factory GetCompanies$() = _$GetCompanies$;
}

/// @nodoc
abstract class $GetCompaniesSuccessfulCopyWith<$Res> {
  factory $GetCompaniesSuccessfulCopyWith(GetCompaniesSuccessful value,
          $Res Function(GetCompaniesSuccessful) then) =
      _$GetCompaniesSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Company> companies});
}

/// @nodoc
class _$GetCompaniesSuccessfulCopyWithImpl<$Res>
    extends _$GetCompaniesCopyWithImpl<$Res>
    implements $GetCompaniesSuccessfulCopyWith<$Res> {
  _$GetCompaniesSuccessfulCopyWithImpl(GetCompaniesSuccessful _value,
      $Res Function(GetCompaniesSuccessful) _then)
      : super(_value, (v) => _then(v as GetCompaniesSuccessful));

  @override
  GetCompaniesSuccessful get _value => super._value as GetCompaniesSuccessful;

  @override
  $Res call({
    Object? companies = freezed,
  }) {
    return _then(GetCompaniesSuccessful(
      companies == freezed
          ? _value.companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<Company>,
    ));
  }
}

/// @nodoc
class _$GetCompaniesSuccessful implements GetCompaniesSuccessful {
  const _$GetCompaniesSuccessful(this.companies);

  @override
  final List<Company> companies;

  @override
  String toString() {
    return 'GetCompanies.successful(companies: $companies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetCompaniesSuccessful &&
            (identical(other.companies, companies) ||
                const DeepCollectionEquality()
                    .equals(other.companies, companies)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(companies);

  @JsonKey(ignore: true)
  @override
  $GetCompaniesSuccessfulCopyWith<GetCompaniesSuccessful> get copyWith =>
      _$GetCompaniesSuccessfulCopyWithImpl<GetCompaniesSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Company> companies) successful,
    required TResult Function(Object error) error,
  }) {
    return successful(companies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Company> companies)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(companies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCompanies$ value) $default, {
    required TResult Function(GetCompaniesSuccessful value) successful,
    required TResult Function(GetCompaniesError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCompanies$ value)? $default, {
    TResult Function(GetCompaniesSuccessful value)? successful,
    TResult Function(GetCompaniesError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetCompaniesSuccessful implements GetCompanies {
  const factory GetCompaniesSuccessful(List<Company> companies) =
      _$GetCompaniesSuccessful;

  List<Company> get companies => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCompaniesSuccessfulCopyWith<GetCompaniesSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCompaniesErrorCopyWith<$Res> {
  factory $GetCompaniesErrorCopyWith(
          GetCompaniesError value, $Res Function(GetCompaniesError) then) =
      _$GetCompaniesErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetCompaniesErrorCopyWithImpl<$Res>
    extends _$GetCompaniesCopyWithImpl<$Res>
    implements $GetCompaniesErrorCopyWith<$Res> {
  _$GetCompaniesErrorCopyWithImpl(
      GetCompaniesError _value, $Res Function(GetCompaniesError) _then)
      : super(_value, (v) => _then(v as GetCompaniesError));

  @override
  GetCompaniesError get _value => super._value as GetCompaniesError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(GetCompaniesError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetCompaniesError implements GetCompaniesError {
  const _$GetCompaniesError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetCompanies.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetCompaniesError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $GetCompaniesErrorCopyWith<GetCompaniesError> get copyWith =>
      _$GetCompaniesErrorCopyWithImpl<GetCompaniesError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Company> companies) successful,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Company> companies)? successful,
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
    TResult Function(GetCompanies$ value) $default, {
    required TResult Function(GetCompaniesSuccessful value) successful,
    required TResult Function(GetCompaniesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCompanies$ value)? $default, {
    TResult Function(GetCompaniesSuccessful value)? successful,
    TResult Function(GetCompaniesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetCompaniesError implements GetCompanies, ErrorAction {
  const factory GetCompaniesError(Object error) = _$GetCompaniesError;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCompaniesErrorCopyWith<GetCompaniesError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchCompaniesTearOff {
  const _$SearchCompaniesTearOff();

  SearchCompanies$ call(String query) {
    return SearchCompanies$(
      query,
    );
  }

  SearchCompaniesSuccessful successful(List<Company> companies) {
    return SearchCompaniesSuccessful(
      companies,
    );
  }

  SearchCompaniesError error(Object error) {
    return SearchCompaniesError(
      error,
    );
  }
}

/// @nodoc
const $SearchCompanies = _$SearchCompaniesTearOff();

/// @nodoc
mixin _$SearchCompanies {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String query) $default, {
    required TResult Function(List<Company> companies) successful,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String query)? $default, {
    TResult Function(List<Company> companies)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SearchCompanies$ value) $default, {
    required TResult Function(SearchCompaniesSuccessful value) successful,
    required TResult Function(SearchCompaniesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SearchCompanies$ value)? $default, {
    TResult Function(SearchCompaniesSuccessful value)? successful,
    TResult Function(SearchCompaniesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCompaniesCopyWith<$Res> {
  factory $SearchCompaniesCopyWith(
          SearchCompanies value, $Res Function(SearchCompanies) then) =
      _$SearchCompaniesCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchCompaniesCopyWithImpl<$Res>
    implements $SearchCompaniesCopyWith<$Res> {
  _$SearchCompaniesCopyWithImpl(this._value, this._then);

  final SearchCompanies _value;
  // ignore: unused_field
  final $Res Function(SearchCompanies) _then;
}

/// @nodoc
abstract class $SearchCompanies$CopyWith<$Res> {
  factory $SearchCompanies$CopyWith(
          SearchCompanies$ value, $Res Function(SearchCompanies$) then) =
      _$SearchCompanies$CopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$SearchCompanies$CopyWithImpl<$Res>
    extends _$SearchCompaniesCopyWithImpl<$Res>
    implements $SearchCompanies$CopyWith<$Res> {
  _$SearchCompanies$CopyWithImpl(
      SearchCompanies$ _value, $Res Function(SearchCompanies$) _then)
      : super(_value, (v) => _then(v as SearchCompanies$));

  @override
  SearchCompanies$ get _value => super._value as SearchCompanies$;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(SearchCompanies$(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$SearchCompanies$ implements SearchCompanies$ {
  const _$SearchCompanies$(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchCompanies(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchCompanies$ &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @JsonKey(ignore: true)
  @override
  $SearchCompanies$CopyWith<SearchCompanies$> get copyWith =>
      _$SearchCompanies$CopyWithImpl<SearchCompanies$>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String query) $default, {
    required TResult Function(List<Company> companies) successful,
    required TResult Function(Object error) error,
  }) {
    return $default(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String query)? $default, {
    TResult Function(List<Company> companies)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SearchCompanies$ value) $default, {
    required TResult Function(SearchCompaniesSuccessful value) successful,
    required TResult Function(SearchCompaniesError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SearchCompanies$ value)? $default, {
    TResult Function(SearchCompaniesSuccessful value)? successful,
    TResult Function(SearchCompaniesError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SearchCompanies$ implements SearchCompanies {
  const factory SearchCompanies$(String query) = _$SearchCompanies$;

  String get query => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchCompanies$CopyWith<SearchCompanies$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCompaniesSuccessfulCopyWith<$Res> {
  factory $SearchCompaniesSuccessfulCopyWith(SearchCompaniesSuccessful value,
          $Res Function(SearchCompaniesSuccessful) then) =
      _$SearchCompaniesSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Company> companies});
}

/// @nodoc
class _$SearchCompaniesSuccessfulCopyWithImpl<$Res>
    extends _$SearchCompaniesCopyWithImpl<$Res>
    implements $SearchCompaniesSuccessfulCopyWith<$Res> {
  _$SearchCompaniesSuccessfulCopyWithImpl(SearchCompaniesSuccessful _value,
      $Res Function(SearchCompaniesSuccessful) _then)
      : super(_value, (v) => _then(v as SearchCompaniesSuccessful));

  @override
  SearchCompaniesSuccessful get _value =>
      super._value as SearchCompaniesSuccessful;

  @override
  $Res call({
    Object? companies = freezed,
  }) {
    return _then(SearchCompaniesSuccessful(
      companies == freezed
          ? _value.companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<Company>,
    ));
  }
}

/// @nodoc
class _$SearchCompaniesSuccessful implements SearchCompaniesSuccessful {
  const _$SearchCompaniesSuccessful(this.companies);

  @override
  final List<Company> companies;

  @override
  String toString() {
    return 'SearchCompanies.successful(companies: $companies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchCompaniesSuccessful &&
            (identical(other.companies, companies) ||
                const DeepCollectionEquality()
                    .equals(other.companies, companies)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(companies);

  @JsonKey(ignore: true)
  @override
  $SearchCompaniesSuccessfulCopyWith<SearchCompaniesSuccessful> get copyWith =>
      _$SearchCompaniesSuccessfulCopyWithImpl<SearchCompaniesSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String query) $default, {
    required TResult Function(List<Company> companies) successful,
    required TResult Function(Object error) error,
  }) {
    return successful(companies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String query)? $default, {
    TResult Function(List<Company> companies)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(companies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SearchCompanies$ value) $default, {
    required TResult Function(SearchCompaniesSuccessful value) successful,
    required TResult Function(SearchCompaniesError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SearchCompanies$ value)? $default, {
    TResult Function(SearchCompaniesSuccessful value)? successful,
    TResult Function(SearchCompaniesError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SearchCompaniesSuccessful implements SearchCompanies {
  const factory SearchCompaniesSuccessful(List<Company> companies) =
      _$SearchCompaniesSuccessful;

  List<Company> get companies => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchCompaniesSuccessfulCopyWith<SearchCompaniesSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCompaniesErrorCopyWith<$Res> {
  factory $SearchCompaniesErrorCopyWith(SearchCompaniesError value,
          $Res Function(SearchCompaniesError) then) =
      _$SearchCompaniesErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$SearchCompaniesErrorCopyWithImpl<$Res>
    extends _$SearchCompaniesCopyWithImpl<$Res>
    implements $SearchCompaniesErrorCopyWith<$Res> {
  _$SearchCompaniesErrorCopyWithImpl(
      SearchCompaniesError _value, $Res Function(SearchCompaniesError) _then)
      : super(_value, (v) => _then(v as SearchCompaniesError));

  @override
  SearchCompaniesError get _value => super._value as SearchCompaniesError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(SearchCompaniesError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$SearchCompaniesError implements SearchCompaniesError {
  const _$SearchCompaniesError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'SearchCompanies.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchCompaniesError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $SearchCompaniesErrorCopyWith<SearchCompaniesError> get copyWith =>
      _$SearchCompaniesErrorCopyWithImpl<SearchCompaniesError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String query) $default, {
    required TResult Function(List<Company> companies) successful,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String query)? $default, {
    TResult Function(List<Company> companies)? successful,
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
    TResult Function(SearchCompanies$ value) $default, {
    required TResult Function(SearchCompaniesSuccessful value) successful,
    required TResult Function(SearchCompaniesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SearchCompanies$ value)? $default, {
    TResult Function(SearchCompaniesSuccessful value)? successful,
    TResult Function(SearchCompaniesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SearchCompaniesError implements SearchCompanies, ErrorAction {
  const factory SearchCompaniesError(Object error) = _$SearchCompaniesError;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchCompaniesErrorCopyWith<SearchCompaniesError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetMeniuTearOff {
  const _$GetMeniuTearOff();

  GetMeniu$ call({required String companyId}) {
    return GetMeniu$(
      companyId: companyId,
    );
  }

  GetMeniuSuccessful successful(Meniu meniu) {
    return GetMeniuSuccessful(
      meniu,
    );
  }

  GetMeniuEvent event() {
    return const GetMeniuEvent();
  }

  GetMeniuError error(Object error) {
    return GetMeniuError(
      error,
    );
  }
}

/// @nodoc
const $GetMeniu = _$GetMeniuTearOff();

/// @nodoc
mixin _$GetMeniu {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String companyId) $default, {
    required TResult Function(Meniu meniu) successful,
    required TResult Function() event,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String companyId)? $default, {
    TResult Function(Meniu meniu)? successful,
    TResult Function()? event,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetMeniu$ value) $default, {
    required TResult Function(GetMeniuSuccessful value) successful,
    required TResult Function(GetMeniuEvent value) event,
    required TResult Function(GetMeniuError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetMeniu$ value)? $default, {
    TResult Function(GetMeniuSuccessful value)? successful,
    TResult Function(GetMeniuEvent value)? event,
    TResult Function(GetMeniuError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMeniuCopyWith<$Res> {
  factory $GetMeniuCopyWith(GetMeniu value, $Res Function(GetMeniu) then) =
      _$GetMeniuCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetMeniuCopyWithImpl<$Res> implements $GetMeniuCopyWith<$Res> {
  _$GetMeniuCopyWithImpl(this._value, this._then);

  final GetMeniu _value;
  // ignore: unused_field
  final $Res Function(GetMeniu) _then;
}

/// @nodoc
abstract class $GetMeniu$CopyWith<$Res> {
  factory $GetMeniu$CopyWith(GetMeniu$ value, $Res Function(GetMeniu$) then) =
      _$GetMeniu$CopyWithImpl<$Res>;
  $Res call({String companyId});
}

/// @nodoc
class _$GetMeniu$CopyWithImpl<$Res> extends _$GetMeniuCopyWithImpl<$Res>
    implements $GetMeniu$CopyWith<$Res> {
  _$GetMeniu$CopyWithImpl(GetMeniu$ _value, $Res Function(GetMeniu$) _then)
      : super(_value, (v) => _then(v as GetMeniu$));

  @override
  GetMeniu$ get _value => super._value as GetMeniu$;

  @override
  $Res call({
    Object? companyId = freezed,
  }) {
    return _then(GetMeniu$(
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$GetMeniu$ implements GetMeniu$ {
  const _$GetMeniu$({required this.companyId});

  @override
  final String companyId;

  @override
  String toString() {
    return 'GetMeniu(companyId: $companyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetMeniu$ &&
            (identical(other.companyId, companyId) ||
                const DeepCollectionEquality()
                    .equals(other.companyId, companyId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(companyId);

  @JsonKey(ignore: true)
  @override
  $GetMeniu$CopyWith<GetMeniu$> get copyWith =>
      _$GetMeniu$CopyWithImpl<GetMeniu$>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String companyId) $default, {
    required TResult Function(Meniu meniu) successful,
    required TResult Function() event,
    required TResult Function(Object error) error,
  }) {
    return $default(companyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String companyId)? $default, {
    TResult Function(Meniu meniu)? successful,
    TResult Function()? event,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(companyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetMeniu$ value) $default, {
    required TResult Function(GetMeniuSuccessful value) successful,
    required TResult Function(GetMeniuEvent value) event,
    required TResult Function(GetMeniuError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetMeniu$ value)? $default, {
    TResult Function(GetMeniuSuccessful value)? successful,
    TResult Function(GetMeniuEvent value)? event,
    TResult Function(GetMeniuError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetMeniu$ implements GetMeniu {
  const factory GetMeniu$({required String companyId}) = _$GetMeniu$;

  String get companyId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMeniu$CopyWith<GetMeniu$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMeniuSuccessfulCopyWith<$Res> {
  factory $GetMeniuSuccessfulCopyWith(
          GetMeniuSuccessful value, $Res Function(GetMeniuSuccessful) then) =
      _$GetMeniuSuccessfulCopyWithImpl<$Res>;
  $Res call({Meniu meniu});
}

/// @nodoc
class _$GetMeniuSuccessfulCopyWithImpl<$Res>
    extends _$GetMeniuCopyWithImpl<$Res>
    implements $GetMeniuSuccessfulCopyWith<$Res> {
  _$GetMeniuSuccessfulCopyWithImpl(
      GetMeniuSuccessful _value, $Res Function(GetMeniuSuccessful) _then)
      : super(_value, (v) => _then(v as GetMeniuSuccessful));

  @override
  GetMeniuSuccessful get _value => super._value as GetMeniuSuccessful;

  @override
  $Res call({
    Object? meniu = freezed,
  }) {
    return _then(GetMeniuSuccessful(
      meniu == freezed
          ? _value.meniu
          : meniu // ignore: cast_nullable_to_non_nullable
              as Meniu,
    ));
  }
}

/// @nodoc
class _$GetMeniuSuccessful implements GetMeniuSuccessful {
  const _$GetMeniuSuccessful(this.meniu);

  @override
  final Meniu meniu;

  @override
  String toString() {
    return 'GetMeniu.successful(meniu: $meniu)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetMeniuSuccessful &&
            (identical(other.meniu, meniu) ||
                const DeepCollectionEquality().equals(other.meniu, meniu)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(meniu);

  @JsonKey(ignore: true)
  @override
  $GetMeniuSuccessfulCopyWith<GetMeniuSuccessful> get copyWith =>
      _$GetMeniuSuccessfulCopyWithImpl<GetMeniuSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String companyId) $default, {
    required TResult Function(Meniu meniu) successful,
    required TResult Function() event,
    required TResult Function(Object error) error,
  }) {
    return successful(meniu);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String companyId)? $default, {
    TResult Function(Meniu meniu)? successful,
    TResult Function()? event,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(meniu);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetMeniu$ value) $default, {
    required TResult Function(GetMeniuSuccessful value) successful,
    required TResult Function(GetMeniuEvent value) event,
    required TResult Function(GetMeniuError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetMeniu$ value)? $default, {
    TResult Function(GetMeniuSuccessful value)? successful,
    TResult Function(GetMeniuEvent value)? event,
    TResult Function(GetMeniuError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetMeniuSuccessful implements GetMeniu {
  const factory GetMeniuSuccessful(Meniu meniu) = _$GetMeniuSuccessful;

  Meniu get meniu => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMeniuSuccessfulCopyWith<GetMeniuSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMeniuEventCopyWith<$Res> {
  factory $GetMeniuEventCopyWith(
          GetMeniuEvent value, $Res Function(GetMeniuEvent) then) =
      _$GetMeniuEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetMeniuEventCopyWithImpl<$Res> extends _$GetMeniuCopyWithImpl<$Res>
    implements $GetMeniuEventCopyWith<$Res> {
  _$GetMeniuEventCopyWithImpl(
      GetMeniuEvent _value, $Res Function(GetMeniuEvent) _then)
      : super(_value, (v) => _then(v as GetMeniuEvent));

  @override
  GetMeniuEvent get _value => super._value as GetMeniuEvent;
}

/// @nodoc
class _$GetMeniuEvent implements GetMeniuEvent {
  const _$GetMeniuEvent();

  @override
  String toString() {
    return 'GetMeniu.event()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetMeniuEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String companyId) $default, {
    required TResult Function(Meniu meniu) successful,
    required TResult Function() event,
    required TResult Function(Object error) error,
  }) {
    return event();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String companyId)? $default, {
    TResult Function(Meniu meniu)? successful,
    TResult Function()? event,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetMeniu$ value) $default, {
    required TResult Function(GetMeniuSuccessful value) successful,
    required TResult Function(GetMeniuEvent value) event,
    required TResult Function(GetMeniuError value) error,
  }) {
    return event(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetMeniu$ value)? $default, {
    TResult Function(GetMeniuSuccessful value)? successful,
    TResult Function(GetMeniuEvent value)? event,
    TResult Function(GetMeniuError value)? error,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(this);
    }
    return orElse();
  }
}

abstract class GetMeniuEvent implements GetMeniu {
  const factory GetMeniuEvent() = _$GetMeniuEvent;
}

/// @nodoc
abstract class $GetMeniuErrorCopyWith<$Res> {
  factory $GetMeniuErrorCopyWith(
          GetMeniuError value, $Res Function(GetMeniuError) then) =
      _$GetMeniuErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetMeniuErrorCopyWithImpl<$Res> extends _$GetMeniuCopyWithImpl<$Res>
    implements $GetMeniuErrorCopyWith<$Res> {
  _$GetMeniuErrorCopyWithImpl(
      GetMeniuError _value, $Res Function(GetMeniuError) _then)
      : super(_value, (v) => _then(v as GetMeniuError));

  @override
  GetMeniuError get _value => super._value as GetMeniuError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(GetMeniuError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetMeniuError implements GetMeniuError {
  const _$GetMeniuError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetMeniu.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetMeniuError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $GetMeniuErrorCopyWith<GetMeniuError> get copyWith =>
      _$GetMeniuErrorCopyWithImpl<GetMeniuError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String companyId) $default, {
    required TResult Function(Meniu meniu) successful,
    required TResult Function() event,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String companyId)? $default, {
    TResult Function(Meniu meniu)? successful,
    TResult Function()? event,
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
    TResult Function(GetMeniu$ value) $default, {
    required TResult Function(GetMeniuSuccessful value) successful,
    required TResult Function(GetMeniuEvent value) event,
    required TResult Function(GetMeniuError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetMeniu$ value)? $default, {
    TResult Function(GetMeniuSuccessful value)? successful,
    TResult Function(GetMeniuEvent value)? event,
    TResult Function(GetMeniuError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetMeniuError implements GetMeniu, ErrorAction {
  const factory GetMeniuError(Object error) = _$GetMeniuError;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMeniuErrorCopyWith<GetMeniuError> get copyWith =>
      throw _privateConstructorUsedError;
}
