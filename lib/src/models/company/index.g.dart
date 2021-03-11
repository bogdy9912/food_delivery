// GENERATED CODE - DO NOT MODIFY BY HAND

part of company_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeliveryOption _$home = const DeliveryOption._('home');
const DeliveryOption _$pickup = const DeliveryOption._('pickup');

DeliveryOption _$valueOf(String name) {
  switch (name) {
    case 'home':
      return _$home;
    case 'pickup':
      return _$pickup;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<DeliveryOption> _$values =
    new BuiltSet<DeliveryOption>(const <DeliveryOption>[
  _$home,
  _$pickup,
]);

Serializer<Company> _$companySerializer = new _$CompanySerializer();
Serializer<CompanyState> _$companyStateSerializer =
    new _$CompanyStateSerializer();
Serializer<Meniu> _$meniuSerializer = new _$MeniuSerializer();
Serializer<MeniuItem> _$meniuItemSerializer = new _$MeniuItemSerializer();
Serializer<Dish> _$dishSerializer = new _$DishSerializer();
Serializer<DeliveryOption> _$deliveryOptionSerializer =
    new _$DeliveryOptionSerializer();

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
      'paymentMethods',
      serializers.serialize(object.paymentMethods,
          specifiedType:
              const FullType(BuiltList, const [const FullType(PaymentMethod)])),
      'deliveryOptions',
      serializers.serialize(object.deliveryOptions,
          specifiedType: const FullType(
              BuiltList, const [const FullType(DeliveryOption)])),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
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
    if (object.deliveryFee != null) {
      result
        ..add('deliveryFee')
        ..add(serializers.serialize(object.deliveryFee,
            specifiedType: const FullType(double)));
    }
    if (object.deliveryThreshold != null) {
      result
        ..add('deliveryThreshold')
        ..add(serializers.serialize(object.deliveryThreshold,
            specifiedType: const FullType(double)));
    }
    if (object.deliveryFeeThreshold != null) {
      result
        ..add('deliveryFeeThreshold')
        ..add(serializers.serialize(object.deliveryFeeThreshold,
            specifiedType: const FullType(double)));
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
        case 'paymentMethods':
          result.paymentMethods.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PaymentMethod)]))
              as BuiltList<Object>);
          break;
        case 'deliveryOptions':
          result.deliveryOptions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(DeliveryOption)]))
              as BuiltList<Object>);
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'deliveryFee':
          result.deliveryFee = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'deliveryThreshold':
          result.deliveryThreshold = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'deliveryFeeThreshold':
          result.deliveryFeeThreshold = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
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
    if (object.meniu != null) {
      result
        ..add('meniu')
        ..add(serializers.serialize(object.meniu,
            specifiedType: const FullType(Meniu)));
    }
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
        case 'meniu':
          result.meniu.replace(serializers.deserialize(value,
              specifiedType: const FullType(Meniu)) as Meniu);
          break;
      }
    }

    return result.build();
  }
}

class _$MeniuSerializer implements StructuredSerializer<Meniu> {
  @override
  final Iterable<Type> types = const [Meniu, _$Meniu];
  @override
  final String wireName = 'Meniu';

  @override
  Iterable<Object> serialize(Serializers serializers, Meniu object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'items',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(MeniuItem)])),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Meniu deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MeniuBuilder();

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
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MeniuItem)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$MeniuItemSerializer implements StructuredSerializer<MeniuItem> {
  @override
  final Iterable<Type> types = const [MeniuItem, _$MeniuItem];
  @override
  final String wireName = 'MeniuItem';

  @override
  Iterable<Object> serialize(Serializers serializers, MeniuItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'category',
      serializers.serialize(object.category,
          specifiedType: const FullType(String)),
      'dishes',
      serializers.serialize(object.dishes,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Dish)])),
    ];

    return result;
  }

  @override
  MeniuItem deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MeniuItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dishes':
          result.dishes.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Dish)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$DishSerializer implements StructuredSerializer<Dish> {
  @override
  final Iterable<Type> types = const [Dish, _$Dish];
  @override
  final String wireName = 'Dish';

  @override
  Iterable<Object> serialize(Serializers serializers, Dish object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(double)),
      'quantity',
      serializers.serialize(object.quantity,
          specifiedType: const FullType(int)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Dish deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DishBuilder();

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
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$DeliveryOptionSerializer
    implements PrimitiveSerializer<DeliveryOption> {
  @override
  final Iterable<Type> types = const <Type>[DeliveryOption];
  @override
  final String wireName = 'DeliveryOption';

  @override
  Object serialize(Serializers serializers, DeliveryOption object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  DeliveryOption deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DeliveryOption.valueOf(serialized as String);
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
  final BuiltList<PaymentMethod> paymentMethods;
  @override
  final BuiltList<DeliveryOption> deliveryOptions;
  @override
  final String address;
  @override
  final double deliveryFee;
  @override
  final double deliveryThreshold;
  @override
  final double deliveryFeeThreshold;
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
      this.paymentMethods,
      this.deliveryOptions,
      this.address,
      this.deliveryFee,
      this.deliveryThreshold,
      this.deliveryFeeThreshold,
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
    if (paymentMethods == null) {
      throw new BuiltValueNullFieldError('Company', 'paymentMethods');
    }
    if (deliveryOptions == null) {
      throw new BuiltValueNullFieldError('Company', 'deliveryOptions');
    }
    if (address == null) {
      throw new BuiltValueNullFieldError('Company', 'address');
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
        paymentMethods == other.paymentMethods &&
        deliveryOptions == other.deliveryOptions &&
        address == other.address &&
        deliveryFee == other.deliveryFee &&
        deliveryThreshold == other.deliveryThreshold &&
        deliveryFeeThreshold == other.deliveryFeeThreshold &&
        searchIndex == other.searchIndex;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc($jc(0, id.hashCode),
                                                        name.hashCode),
                                                    rating.hashCode),
                                                image.hashCode),
                                            openHour.hashCode),
                                        closeHour.hashCode),
                                    city.hashCode),
                                paymentMethods.hashCode),
                            deliveryOptions.hashCode),
                        address.hashCode),
                    deliveryFee.hashCode),
                deliveryThreshold.hashCode),
            deliveryFeeThreshold.hashCode),
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
          ..add('paymentMethods', paymentMethods)
          ..add('deliveryOptions', deliveryOptions)
          ..add('address', address)
          ..add('deliveryFee', deliveryFee)
          ..add('deliveryThreshold', deliveryThreshold)
          ..add('deliveryFeeThreshold', deliveryFeeThreshold)
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

  ListBuilder<PaymentMethod> _paymentMethods;
  ListBuilder<PaymentMethod> get paymentMethods =>
      _$this._paymentMethods ??= new ListBuilder<PaymentMethod>();
  set paymentMethods(ListBuilder<PaymentMethod> paymentMethods) =>
      _$this._paymentMethods = paymentMethods;

  ListBuilder<DeliveryOption> _deliveryOptions;
  ListBuilder<DeliveryOption> get deliveryOptions =>
      _$this._deliveryOptions ??= new ListBuilder<DeliveryOption>();
  set deliveryOptions(ListBuilder<DeliveryOption> deliveryOptions) =>
      _$this._deliveryOptions = deliveryOptions;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  double _deliveryFee;
  double get deliveryFee => _$this._deliveryFee;
  set deliveryFee(double deliveryFee) => _$this._deliveryFee = deliveryFee;

  double _deliveryThreshold;
  double get deliveryThreshold => _$this._deliveryThreshold;
  set deliveryThreshold(double deliveryThreshold) =>
      _$this._deliveryThreshold = deliveryThreshold;

  double _deliveryFeeThreshold;
  double get deliveryFeeThreshold => _$this._deliveryFeeThreshold;
  set deliveryFeeThreshold(double deliveryFeeThreshold) =>
      _$this._deliveryFeeThreshold = deliveryFeeThreshold;

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
      _paymentMethods = _$v.paymentMethods?.toBuilder();
      _deliveryOptions = _$v.deliveryOptions?.toBuilder();
      _address = _$v.address;
      _deliveryFee = _$v.deliveryFee;
      _deliveryThreshold = _$v.deliveryThreshold;
      _deliveryFeeThreshold = _$v.deliveryFeeThreshold;
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
              paymentMethods: paymentMethods.build(),
              deliveryOptions: deliveryOptions.build(),
              address: address,
              deliveryFee: deliveryFee,
              deliveryThreshold: deliveryThreshold,
              deliveryFeeThreshold: deliveryFeeThreshold,
              searchIndex: _searchIndex?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'paymentMethods';
        paymentMethods.build();
        _$failedField = 'deliveryOptions';
        deliveryOptions.build();

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
  @override
  final Meniu meniu;

  factory _$CompanyState([void Function(CompanyStateBuilder) updates]) =>
      (new CompanyStateBuilder()..update(updates)).build();

  _$CompanyState._({this.companies, this.searchResult, this.meniu})
      : super._() {
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
        searchResult == other.searchResult &&
        meniu == other.meniu;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, companies.hashCode), searchResult.hashCode),
        meniu.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CompanyState')
          ..add('companies', companies)
          ..add('searchResult', searchResult)
          ..add('meniu', meniu))
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

  MeniuBuilder _meniu;
  MeniuBuilder get meniu => _$this._meniu ??= new MeniuBuilder();
  set meniu(MeniuBuilder meniu) => _$this._meniu = meniu;

  CompanyStateBuilder();

  CompanyStateBuilder get _$this {
    if (_$v != null) {
      _companies = _$v.companies?.toBuilder();
      _searchResult = _$v.searchResult?.toBuilder();
      _meniu = _$v.meniu?.toBuilder();
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
              companies: companies.build(),
              searchResult: searchResult.build(),
              meniu: _meniu?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'companies';
        companies.build();
        _$failedField = 'searchResult';
        searchResult.build();
        _$failedField = 'meniu';
        _meniu?.build();
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

class _$Meniu extends Meniu {
  @override
  final String id;
  @override
  final BuiltList<MeniuItem> items;

  factory _$Meniu([void Function(MeniuBuilder) updates]) =>
      (new MeniuBuilder()..update(updates)).build();

  _$Meniu._({this.id, this.items}) : super._() {
    if (items == null) {
      throw new BuiltValueNullFieldError('Meniu', 'items');
    }
  }

  @override
  Meniu rebuild(void Function(MeniuBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MeniuBuilder toBuilder() => new MeniuBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Meniu && id == other.id && items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Meniu')
          ..add('id', id)
          ..add('items', items))
        .toString();
  }
}

class MeniuBuilder implements Builder<Meniu, MeniuBuilder> {
  _$Meniu _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  ListBuilder<MeniuItem> _items;
  ListBuilder<MeniuItem> get items =>
      _$this._items ??= new ListBuilder<MeniuItem>();
  set items(ListBuilder<MeniuItem> items) => _$this._items = items;

  MeniuBuilder();

  MeniuBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Meniu other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Meniu;
  }

  @override
  void update(void Function(MeniuBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Meniu build() {
    _$Meniu _$result;
    try {
      _$result = _$v ?? new _$Meniu._(id: id, items: items.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Meniu', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$MeniuItem extends MeniuItem {
  @override
  final String category;
  @override
  final BuiltList<Dish> dishes;

  factory _$MeniuItem([void Function(MeniuItemBuilder) updates]) =>
      (new MeniuItemBuilder()..update(updates)).build();

  _$MeniuItem._({this.category, this.dishes}) : super._() {
    if (category == null) {
      throw new BuiltValueNullFieldError('MeniuItem', 'category');
    }
    if (dishes == null) {
      throw new BuiltValueNullFieldError('MeniuItem', 'dishes');
    }
  }

  @override
  MeniuItem rebuild(void Function(MeniuItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MeniuItemBuilder toBuilder() => new MeniuItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MeniuItem &&
        category == other.category &&
        dishes == other.dishes;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, category.hashCode), dishes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MeniuItem')
          ..add('category', category)
          ..add('dishes', dishes))
        .toString();
  }
}

class MeniuItemBuilder implements Builder<MeniuItem, MeniuItemBuilder> {
  _$MeniuItem _$v;

  String _category;
  String get category => _$this._category;
  set category(String category) => _$this._category = category;

  ListBuilder<Dish> _dishes;
  ListBuilder<Dish> get dishes => _$this._dishes ??= new ListBuilder<Dish>();
  set dishes(ListBuilder<Dish> dishes) => _$this._dishes = dishes;

  MeniuItemBuilder();

  MeniuItemBuilder get _$this {
    if (_$v != null) {
      _category = _$v.category;
      _dishes = _$v.dishes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MeniuItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MeniuItem;
  }

  @override
  void update(void Function(MeniuItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MeniuItem build() {
    _$MeniuItem _$result;
    try {
      _$result =
          _$v ?? new _$MeniuItem._(category: category, dishes: dishes.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'dishes';
        dishes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MeniuItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Dish extends Dish {
  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final double price;
  @override
  final int quantity;

  factory _$Dish([void Function(DishBuilder) updates]) =>
      (new DishBuilder()..update(updates)).build();

  _$Dish._({this.id, this.name, this.description, this.price, this.quantity})
      : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('Dish', 'name');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('Dish', 'description');
    }
    if (price == null) {
      throw new BuiltValueNullFieldError('Dish', 'price');
    }
    if (quantity == null) {
      throw new BuiltValueNullFieldError('Dish', 'quantity');
    }
  }

  @override
  Dish rebuild(void Function(DishBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DishBuilder toBuilder() => new DishBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Dish &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        price == other.price &&
        quantity == other.quantity;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), name.hashCode), description.hashCode),
            price.hashCode),
        quantity.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Dish')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('price', price)
          ..add('quantity', quantity))
        .toString();
  }
}

class DishBuilder implements Builder<Dish, DishBuilder> {
  _$Dish _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  double _price;
  double get price => _$this._price;
  set price(double price) => _$this._price = price;

  int _quantity;
  int get quantity => _$this._quantity;
  set quantity(int quantity) => _$this._quantity = quantity;

  DishBuilder();

  DishBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _description = _$v.description;
      _price = _$v.price;
      _quantity = _$v.quantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Dish other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Dish;
  }

  @override
  void update(void Function(DishBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Dish build() {
    final _$result = _$v ??
        new _$Dish._(
            id: id,
            name: name,
            description: description,
            price: price,
            quantity: quantity);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
