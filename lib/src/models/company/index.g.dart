// GENERATED CODE - DO NOT MODIFY BY HAND

part of company_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Company> _$companySerializer = new _$CompanySerializer();
Serializer<CompanyState> _$companyStateSerializer =
    new _$CompanyStateSerializer();

class _$CompanySerializer implements StructuredSerializer<Company> {
  @override
  final Iterable<Type> types = const [Company, _$Company];
  @override
  final String wireName = 'Company';

  @override
  Iterable<Object> serialize(Serializers serializers, Company object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'openHour',
      serializers.serialize(object.openHour,
          specifiedType: const FullType(String)),
      'closeHour',
      serializers.serialize(object.closeHour,
          specifiedType: const FullType(String)),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
    ];
    if (object.rating != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(object.rating,
            specifiedType: const FullType(double)));
    }
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    if (object.searchIndex != null) {
      result
        ..add('searchIndex')
        ..add(serializers.serialize(object.searchIndex,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  Company deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompanyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'openHour':
          result.openHour = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'closeHour':
          result.closeHour = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'searchIndex':
          result.searchIndex.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CompanyStateSerializer implements StructuredSerializer<CompanyState> {
  @override
  final Iterable<Type> types = const [CompanyState, _$CompanyState];
  @override
  final String wireName = 'CompanyState';

  @override
  Iterable<Object> serialize(Serializers serializers, CompanyState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'companies',
      serializers.serialize(object.companies,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Company)])),
      'searchResult',
      serializers.serialize(object.searchResult,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Company)])),
    ];

    return result;
  }

  @override
  CompanyState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompanyStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'companies':
          result.companies.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Company)]))
              as BuiltList<Object>);
          break;
        case 'searchResult':
          result.searchResult.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Company)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Company extends Company {
  @override
  final String id;
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
  final BuiltList<String> searchIndex;

  factory _$Company([void Function(CompanyBuilder) updates]) =>
      (new CompanyBuilder()..update(updates)).build();

  _$Company._(
      {this.id,
      this.name,
      this.rating,
      this.image,
      this.openHour,
      this.closeHour,
      this.city,
      this.searchIndex})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Company', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Company', 'name');
    }
    if (openHour == null) {
      throw new BuiltValueNullFieldError('Company', 'openHour');
    }
    if (closeHour == null) {
      throw new BuiltValueNullFieldError('Company', 'closeHour');
    }
    if (city == null) {
      throw new BuiltValueNullFieldError('Company', 'city');
    }
  }

  @override
  Company rebuild(void Function(CompanyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompanyBuilder toBuilder() => new CompanyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Company &&
        id == other.id &&
        name == other.name &&
        rating == other.rating &&
        image == other.image &&
        openHour == other.openHour &&
        closeHour == other.closeHour &&
        city == other.city &&
        searchIndex == other.searchIndex;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), name.hashCode),
                            rating.hashCode),
                        image.hashCode),
                    openHour.hashCode),
                closeHour.hashCode),
            city.hashCode),
        searchIndex.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Company')
          ..add('id', id)
          ..add('name', name)
          ..add('rating', rating)
          ..add('image', image)
          ..add('openHour', openHour)
          ..add('closeHour', closeHour)
          ..add('city', city)
          ..add('searchIndex', searchIndex))
        .toString();
  }
}

class CompanyBuilder implements Builder<Company, CompanyBuilder> {
  _$Company _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  double _rating;
  double get rating => _$this._rating;
  set rating(double rating) => _$this._rating = rating;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _openHour;
  String get openHour => _$this._openHour;
  set openHour(String openHour) => _$this._openHour = openHour;

  String _closeHour;
  String get closeHour => _$this._closeHour;
  set closeHour(String closeHour) => _$this._closeHour = closeHour;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  ListBuilder<String> _searchIndex;
  ListBuilder<String> get searchIndex =>
      _$this._searchIndex ??= new ListBuilder<String>();
  set searchIndex(ListBuilder<String> searchIndex) =>
      _$this._searchIndex = searchIndex;

  CompanyBuilder();

  CompanyBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _rating = _$v.rating;
      _image = _$v.image;
      _openHour = _$v.openHour;
      _closeHour = _$v.closeHour;
      _city = _$v.city;
      _searchIndex = _$v.searchIndex?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Company other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Company;
  }

  @override
  void update(void Function(CompanyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Company build() {
    _$Company _$result;
    try {
      _$result = _$v ??
          new _$Company._(
              id: id,
              name: name,
              rating: rating,
              image: image,
              openHour: openHour,
              closeHour: closeHour,
              city: city,
              searchIndex: _searchIndex?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'searchIndex';
        _searchIndex?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Company', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CompanyState extends CompanyState {
  @override
  final BuiltList<Company> companies;
  @override
  final BuiltList<Company> searchResult;

  factory _$CompanyState([void Function(CompanyStateBuilder) updates]) =>
      (new CompanyStateBuilder()..update(updates)).build();

  _$CompanyState._({this.companies, this.searchResult}) : super._() {
    if (companies == null) {
      throw new BuiltValueNullFieldError('CompanyState', 'companies');
    }
    if (searchResult == null) {
      throw new BuiltValueNullFieldError('CompanyState', 'searchResult');
    }
  }

  @override
  CompanyState rebuild(void Function(CompanyStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompanyStateBuilder toBuilder() => new CompanyStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompanyState &&
        companies == other.companies &&
        searchResult == other.searchResult;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, companies.hashCode), searchResult.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CompanyState')
          ..add('companies', companies)
          ..add('searchResult', searchResult))
        .toString();
  }
}

class CompanyStateBuilder
    implements Builder<CompanyState, CompanyStateBuilder> {
  _$CompanyState _$v;

  ListBuilder<Company> _companies;
  ListBuilder<Company> get companies =>
      _$this._companies ??= new ListBuilder<Company>();
  set companies(ListBuilder<Company> companies) =>
      _$this._companies = companies;

  ListBuilder<Company> _searchResult;
  ListBuilder<Company> get searchResult =>
      _$this._searchResult ??= new ListBuilder<Company>();
  set searchResult(ListBuilder<Company> searchResult) =>
      _$this._searchResult = searchResult;

  CompanyStateBuilder();

  CompanyStateBuilder get _$this {
    if (_$v != null) {
      _companies = _$v.companies?.toBuilder();
      _searchResult = _$v.searchResult?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompanyState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CompanyState;
  }

  @override
  void update(void Function(CompanyStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CompanyState build() {
    _$CompanyState _$result;
    try {
      _$result = _$v ??
          new _$CompanyState._(
              companies: companies.build(), searchResult: searchResult.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'companies';
        companies.build();
        _$failedField = 'searchResult';
        searchResult.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CompanyState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
