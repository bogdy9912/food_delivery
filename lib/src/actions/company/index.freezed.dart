// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of company_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CreateCompanyTearOff {
  const _$CreateCompanyTearOff();

// ignore: unused_element
  CreateCompany$ call(
      {@required String name,
      @required double rating,
      @required String image,
      @required String openHour,
      @required String closeHour,
      @required String city}) {
    return CreateCompany$(
      name: name,
      rating: rating,
      image: image,
      openHour: openHour,
      closeHour: closeHour,
      city: city,
    );
  }

// ignore: unused_element
  CreateCompanySuccessful successful() {
    return const CreateCompanySuccessful();
  }

// ignore: unused_element
  CreateCompanyError error(Object error) {
    return CreateCompanyError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CreateCompany = _$CreateCompanyTearOff();

/// @nodoc
mixin _$CreateCompany {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String name, double rating, String image, String openHour,
        String closeHour, String city), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String name, double rating, String image, String openHour,
        String closeHour, String city), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CreateCompany$ value), {
    @required Result successful(CreateCompanySuccessful value),
    @required Result error(CreateCompanyError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreateCompany$ value), {
    Result successful(CreateCompanySuccessful value),
    Result error(CreateCompanyError value),
    @required Result orElse(),
  });
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
    Object name = freezed,
    Object rating = freezed,
    Object image = freezed,
    Object openHour = freezed,
    Object closeHour = freezed,
    Object city = freezed,
  }) {
    return _then(CreateCompany$(
      name: name == freezed ? _value.name : name as String,
      rating: rating == freezed ? _value.rating : rating as double,
      image: image == freezed ? _value.image : image as String,
      openHour: openHour == freezed ? _value.openHour : openHour as String,
      closeHour: closeHour == freezed ? _value.closeHour : closeHour as String,
      city: city == freezed ? _value.city : city as String,
    ));
  }
}

/// @nodoc
class _$CreateCompany$ implements CreateCompany$ {
  const _$CreateCompany$(
      {@required this.name,
      @required this.rating,
      @required this.image,
      @required this.openHour,
      @required this.closeHour,
      @required this.city})
      : assert(name != null),
        assert(rating != null),
        assert(image != null),
        assert(openHour != null),
        assert(closeHour != null),
        assert(city != null);

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

  @override
  $CreateCompany$CopyWith<CreateCompany$> get copyWith =>
      _$CreateCompany$CopyWithImpl<CreateCompany$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String name, double rating, String image, String openHour,
        String closeHour, String city), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(name, rating, image, openHour, closeHour, city);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String name, double rating, String image, String openHour,
        String closeHour, String city), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(name, rating, image, openHour, closeHour, city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CreateCompany$ value), {
    @required Result successful(CreateCompanySuccessful value),
    @required Result error(CreateCompanyError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreateCompany$ value), {
    Result successful(CreateCompanySuccessful value),
    Result error(CreateCompanyError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CreateCompany$ implements CreateCompany {
  const factory CreateCompany$(
      {@required String name,
      @required double rating,
      @required String image,
      @required String openHour,
      @required String closeHour,
      @required String city}) = _$CreateCompany$;

  String get name;
  double get rating;
  String get image;
  String get openHour;
  String get closeHour;
  String get city;
  $CreateCompany$CopyWith<CreateCompany$> get copyWith;
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
  Result when<Result extends Object>(
    Result $default(String name, double rating, String image, String openHour,
        String closeHour, String city), {
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
    Result $default(String name, double rating, String image, String openHour,
        String closeHour, String city), {
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
    Result $default(CreateCompany$ value), {
    @required Result successful(CreateCompanySuccessful value),
    @required Result error(CreateCompanyError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreateCompany$ value), {
    Result successful(CreateCompanySuccessful value),
    Result error(CreateCompanyError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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
    Object error = freezed,
  }) {
    return _then(CreateCompanyError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$CreateCompanyError implements CreateCompanyError {
  const _$CreateCompanyError(this.error) : assert(error != null);

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

  @override
  $CreateCompanyErrorCopyWith<CreateCompanyError> get copyWith =>
      _$CreateCompanyErrorCopyWithImpl<CreateCompanyError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String name, double rating, String image, String openHour,
        String closeHour, String city), {
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
    Result $default(String name, double rating, String image, String openHour,
        String closeHour, String city), {
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
    Result $default(CreateCompany$ value), {
    @required Result successful(CreateCompanySuccessful value),
    @required Result error(CreateCompanyError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreateCompany$ value), {
    Result successful(CreateCompanySuccessful value),
    Result error(CreateCompanyError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateCompanyError implements CreateCompany, ErrorAction {
  const factory CreateCompanyError(Object error) = _$CreateCompanyError;

  Object get error;
  $CreateCompanyErrorCopyWith<CreateCompanyError> get copyWith;
}

/// @nodoc
class _$GetCompaniesTearOff {
  const _$GetCompaniesTearOff();

// ignore: unused_element
  GetCompanies$ call() {
    return const GetCompanies$();
  }

// ignore: unused_element
  GetCompaniesSuccessful successful(List<Company> companies) {
    return GetCompaniesSuccessful(
      companies,
    );
  }

// ignore: unused_element
  GetCompaniesError error(Object error) {
    return GetCompaniesError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetCompanies = _$GetCompaniesTearOff();

/// @nodoc
mixin _$GetCompanies {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Company> companies),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Company> companies),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetCompanies$ value), {
    @required Result successful(GetCompaniesSuccessful value),
    @required Result error(GetCompaniesError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetCompanies$ value), {
    Result successful(GetCompaniesSuccessful value),
    Result error(GetCompaniesError value),
    @required Result orElse(),
  });
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
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Company> companies),
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
    Result successful(List<Company> companies),
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
    Result $default(GetCompanies$ value), {
    @required Result successful(GetCompaniesSuccessful value),
    @required Result error(GetCompaniesError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetCompanies$ value), {
    Result successful(GetCompaniesSuccessful value),
    Result error(GetCompaniesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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
    Object companies = freezed,
  }) {
    return _then(GetCompaniesSuccessful(
      companies == freezed ? _value.companies : companies as List<Company>,
    ));
  }
}

/// @nodoc
class _$GetCompaniesSuccessful implements GetCompaniesSuccessful {
  const _$GetCompaniesSuccessful(this.companies) : assert(companies != null);

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

  @override
  $GetCompaniesSuccessfulCopyWith<GetCompaniesSuccessful> get copyWith =>
      _$GetCompaniesSuccessfulCopyWithImpl<GetCompaniesSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Company> companies),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(companies);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Company> companies),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(companies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetCompanies$ value), {
    @required Result successful(GetCompaniesSuccessful value),
    @required Result error(GetCompaniesError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetCompanies$ value), {
    Result successful(GetCompaniesSuccessful value),
    Result error(GetCompaniesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetCompaniesSuccessful implements GetCompanies {
  const factory GetCompaniesSuccessful(List<Company> companies) =
      _$GetCompaniesSuccessful;

  List<Company> get companies;
  $GetCompaniesSuccessfulCopyWith<GetCompaniesSuccessful> get copyWith;
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
    Object error = freezed,
  }) {
    return _then(GetCompaniesError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetCompaniesError implements GetCompaniesError {
  const _$GetCompaniesError(this.error) : assert(error != null);

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

  @override
  $GetCompaniesErrorCopyWith<GetCompaniesError> get copyWith =>
      _$GetCompaniesErrorCopyWithImpl<GetCompaniesError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Company> companies),
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
    Result successful(List<Company> companies),
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
    Result $default(GetCompanies$ value), {
    @required Result successful(GetCompaniesSuccessful value),
    @required Result error(GetCompaniesError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetCompanies$ value), {
    Result successful(GetCompaniesSuccessful value),
    Result error(GetCompaniesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetCompaniesError implements GetCompanies, ErrorAction {
  const factory GetCompaniesError(Object error) = _$GetCompaniesError;

  Object get error;
  $GetCompaniesErrorCopyWith<GetCompaniesError> get copyWith;
}

/// @nodoc
class _$SearchCompaniesTearOff {
  const _$SearchCompaniesTearOff();

// ignore: unused_element
  SearchCompanies$ call(String query) {
    return SearchCompanies$(
      query,
    );
  }

// ignore: unused_element
  SearchCompaniesSuccessful successful(List<Company> companies) {
    return SearchCompaniesSuccessful(
      companies,
    );
  }

// ignore: unused_element
  SearchCompaniesError error(Object error) {
    return SearchCompaniesError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchCompanies = _$SearchCompaniesTearOff();

/// @nodoc
mixin _$SearchCompanies {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String query), {
    @required Result successful(List<Company> companies),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String query), {
    Result successful(List<Company> companies),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SearchCompanies$ value), {
    @required Result successful(SearchCompaniesSuccessful value),
    @required Result error(SearchCompaniesError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SearchCompanies$ value), {
    Result successful(SearchCompaniesSuccessful value),
    Result error(SearchCompaniesError value),
    @required Result orElse(),
  });
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
    Object query = freezed,
  }) {
    return _then(SearchCompanies$(
      query == freezed ? _value.query : query as String,
    ));
  }
}

/// @nodoc
class _$SearchCompanies$ implements SearchCompanies$ {
  const _$SearchCompanies$(this.query) : assert(query != null);

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

  @override
  $SearchCompanies$CopyWith<SearchCompanies$> get copyWith =>
      _$SearchCompanies$CopyWithImpl<SearchCompanies$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String query), {
    @required Result successful(List<Company> companies),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(query);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String query), {
    Result successful(List<Company> companies),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SearchCompanies$ value), {
    @required Result successful(SearchCompaniesSuccessful value),
    @required Result error(SearchCompaniesError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SearchCompanies$ value), {
    Result successful(SearchCompaniesSuccessful value),
    Result error(SearchCompaniesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SearchCompanies$ implements SearchCompanies {
  const factory SearchCompanies$(String query) = _$SearchCompanies$;

  String get query;
  $SearchCompanies$CopyWith<SearchCompanies$> get copyWith;
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
    Object companies = freezed,
  }) {
    return _then(SearchCompaniesSuccessful(
      companies == freezed ? _value.companies : companies as List<Company>,
    ));
  }
}

/// @nodoc
class _$SearchCompaniesSuccessful implements SearchCompaniesSuccessful {
  const _$SearchCompaniesSuccessful(this.companies) : assert(companies != null);

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

  @override
  $SearchCompaniesSuccessfulCopyWith<SearchCompaniesSuccessful> get copyWith =>
      _$SearchCompaniesSuccessfulCopyWithImpl<SearchCompaniesSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String query), {
    @required Result successful(List<Company> companies),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(companies);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String query), {
    Result successful(List<Company> companies),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(companies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SearchCompanies$ value), {
    @required Result successful(SearchCompaniesSuccessful value),
    @required Result error(SearchCompaniesError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SearchCompanies$ value), {
    Result successful(SearchCompaniesSuccessful value),
    Result error(SearchCompaniesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SearchCompaniesSuccessful implements SearchCompanies {
  const factory SearchCompaniesSuccessful(List<Company> companies) =
      _$SearchCompaniesSuccessful;

  List<Company> get companies;
  $SearchCompaniesSuccessfulCopyWith<SearchCompaniesSuccessful> get copyWith;
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
    Object error = freezed,
  }) {
    return _then(SearchCompaniesError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$SearchCompaniesError implements SearchCompaniesError {
  const _$SearchCompaniesError(this.error) : assert(error != null);

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

  @override
  $SearchCompaniesErrorCopyWith<SearchCompaniesError> get copyWith =>
      _$SearchCompaniesErrorCopyWithImpl<SearchCompaniesError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String query), {
    @required Result successful(List<Company> companies),
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
    Result $default(String query), {
    Result successful(List<Company> companies),
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
    Result $default(SearchCompanies$ value), {
    @required Result successful(SearchCompaniesSuccessful value),
    @required Result error(SearchCompaniesError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SearchCompanies$ value), {
    Result successful(SearchCompaniesSuccessful value),
    Result error(SearchCompaniesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SearchCompaniesError implements SearchCompanies, ErrorAction {
  const factory SearchCompaniesError(Object error) = _$SearchCompaniesError;

  Object get error;
  $SearchCompaniesErrorCopyWith<SearchCompaniesError> get copyWith;
}

/// @nodoc
class _$GetMeniuTearOff {
  const _$GetMeniuTearOff();

// ignore: unused_element
  GetMeniu$ call({@required String companyId}) {
    return GetMeniu$(
      companyId: companyId,
    );
  }

// ignore: unused_element
  GetMeniuSuccessful successful(Meniu meniu) {
    return GetMeniuSuccessful(
      meniu,
    );
  }

// ignore: unused_element
  GetMeniuEvent event() {
    return const GetMeniuEvent();
  }

// ignore: unused_element
  GetMeniuError error(Object error) {
    return GetMeniuError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetMeniu = _$GetMeniuTearOff();

/// @nodoc
mixin _$GetMeniu {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String companyId), {
    @required Result successful(Meniu meniu),
    @required Result event(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String companyId), {
    Result successful(Meniu meniu),
    Result event(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetMeniu$ value), {
    @required Result successful(GetMeniuSuccessful value),
    @required Result event(GetMeniuEvent value),
    @required Result error(GetMeniuError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetMeniu$ value), {
    Result successful(GetMeniuSuccessful value),
    Result event(GetMeniuEvent value),
    Result error(GetMeniuError value),
    @required Result orElse(),
  });
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
    Object companyId = freezed,
  }) {
    return _then(GetMeniu$(
      companyId: companyId == freezed ? _value.companyId : companyId as String,
    ));
  }
}

/// @nodoc
class _$GetMeniu$ implements GetMeniu$ {
  const _$GetMeniu$({@required this.companyId}) : assert(companyId != null);

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

  @override
  $GetMeniu$CopyWith<GetMeniu$> get copyWith =>
      _$GetMeniu$CopyWithImpl<GetMeniu$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String companyId), {
    @required Result successful(Meniu meniu),
    @required Result event(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(event != null);
    assert(error != null);
    return $default(companyId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String companyId), {
    Result successful(Meniu meniu),
    Result event(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(companyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetMeniu$ value), {
    @required Result successful(GetMeniuSuccessful value),
    @required Result event(GetMeniuEvent value),
    @required Result error(GetMeniuError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(event != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetMeniu$ value), {
    Result successful(GetMeniuSuccessful value),
    Result event(GetMeniuEvent value),
    Result error(GetMeniuError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetMeniu$ implements GetMeniu {
  const factory GetMeniu$({@required String companyId}) = _$GetMeniu$;

  String get companyId;
  $GetMeniu$CopyWith<GetMeniu$> get copyWith;
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
    Object meniu = freezed,
  }) {
    return _then(GetMeniuSuccessful(
      meniu == freezed ? _value.meniu : meniu as Meniu,
    ));
  }
}

/// @nodoc
class _$GetMeniuSuccessful implements GetMeniuSuccessful {
  const _$GetMeniuSuccessful(this.meniu) : assert(meniu != null);

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

  @override
  $GetMeniuSuccessfulCopyWith<GetMeniuSuccessful> get copyWith =>
      _$GetMeniuSuccessfulCopyWithImpl<GetMeniuSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String companyId), {
    @required Result successful(Meniu meniu),
    @required Result event(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(event != null);
    assert(error != null);
    return successful(meniu);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String companyId), {
    Result successful(Meniu meniu),
    Result event(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(meniu);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetMeniu$ value), {
    @required Result successful(GetMeniuSuccessful value),
    @required Result event(GetMeniuEvent value),
    @required Result error(GetMeniuError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(event != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetMeniu$ value), {
    Result successful(GetMeniuSuccessful value),
    Result event(GetMeniuEvent value),
    Result error(GetMeniuError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetMeniuSuccessful implements GetMeniu {
  const factory GetMeniuSuccessful(Meniu meniu) = _$GetMeniuSuccessful;

  Meniu get meniu;
  $GetMeniuSuccessfulCopyWith<GetMeniuSuccessful> get copyWith;
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
  Result when<Result extends Object>(
    Result $default(String companyId), {
    @required Result successful(Meniu meniu),
    @required Result event(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(event != null);
    assert(error != null);
    return event();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String companyId), {
    Result successful(Meniu meniu),
    Result event(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (event != null) {
      return event();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetMeniu$ value), {
    @required Result successful(GetMeniuSuccessful value),
    @required Result event(GetMeniuEvent value),
    @required Result error(GetMeniuError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(event != null);
    assert(error != null);
    return event(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetMeniu$ value), {
    Result successful(GetMeniuSuccessful value),
    Result event(GetMeniuEvent value),
    Result error(GetMeniuError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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
    Object error = freezed,
  }) {
    return _then(GetMeniuError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetMeniuError implements GetMeniuError {
  const _$GetMeniuError(this.error) : assert(error != null);

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

  @override
  $GetMeniuErrorCopyWith<GetMeniuError> get copyWith =>
      _$GetMeniuErrorCopyWithImpl<GetMeniuError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String companyId), {
    @required Result successful(Meniu meniu),
    @required Result event(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(event != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String companyId), {
    Result successful(Meniu meniu),
    Result event(),
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
    Result $default(GetMeniu$ value), {
    @required Result successful(GetMeniuSuccessful value),
    @required Result event(GetMeniuEvent value),
    @required Result error(GetMeniuError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(event != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetMeniu$ value), {
    Result successful(GetMeniuSuccessful value),
    Result event(GetMeniuEvent value),
    Result error(GetMeniuError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetMeniuError implements GetMeniu, ErrorAction {
  const factory GetMeniuError(Object error) = _$GetMeniuError;

  Object get error;
  $GetMeniuErrorCopyWith<GetMeniuError> get copyWith;
}
