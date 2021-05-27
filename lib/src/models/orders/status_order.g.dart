// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_order.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StatusOrder _$pending = const StatusOrder._('pending');
const StatusOrder _$declinedOrder = const StatusOrder._('declinedOrder');
const StatusOrder _$inProcess = const StatusOrder._('inProcess');
const StatusOrder _$doneProcessing = const StatusOrder._('doneProcessing');
const StatusOrder _$delivery = const StatusOrder._('delivery');
const StatusOrder _$finishDelivery = const StatusOrder._('finishDelivery');
const StatusOrder _$withReview = const StatusOrder._('withReview');
const StatusOrder _$notReview = const StatusOrder._('notReview');

StatusOrder _$valueOf(String name) {
  switch (name) {
    case 'pending':
      return _$pending;
    case 'declinedOrder':
      return _$declinedOrder;
    case 'inProcess':
      return _$inProcess;
    case 'doneProcessing':
      return _$doneProcessing;
    case 'delivery':
      return _$delivery;
    case 'finishDelivery':
      return _$finishDelivery;
    case 'withReview':
      return _$withReview;
    case 'notReview':
      return _$notReview;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<StatusOrder> _$values =
    new BuiltSet<StatusOrder>(const <StatusOrder>[
  _$pending,
  _$declinedOrder,
  _$inProcess,
  _$doneProcessing,
  _$delivery,
  _$finishDelivery,
  _$withReview,
  _$notReview,
]);

Serializer<StatusOrder> _$statusOrderSerializer = new _$StatusOrderSerializer();

class _$StatusOrderSerializer implements PrimitiveSerializer<StatusOrder> {
  @override
  final Iterable<Type> types = const <Type>[StatusOrder];
  @override
  final String wireName = 'StatusOrder';

  @override
  Object serialize(Serializers serializers, StatusOrder object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  StatusOrder deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      StatusOrder.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
