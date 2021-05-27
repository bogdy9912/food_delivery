  import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'status_order.g.dart';

class StatusOrder extends EnumClass {
  const StatusOrder._(String name) : super(name);

  static const StatusOrder pending = _$pending;
  static const StatusOrder declinedOrder = _$declinedOrder;
  static const StatusOrder inProcess = _$inProcess;
  static const StatusOrder doneProcessing = _$doneProcessing;
  static const StatusOrder delivery = _$delivery;
  static const StatusOrder finishDelivery = _$finishDelivery;
  static const StatusOrder withReview = _$withReview;
  static const StatusOrder notReview = _$notReview;


  static BuiltSet<StatusOrder> get values => _$values;

  static StatusOrder valueOf(String name) => _$valueOf(name);

  static Serializer<StatusOrder> get serializer => _$statusOrderSerializer;
}