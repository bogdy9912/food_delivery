library models;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:food_delivery/src/models/company/index.dart';
import 'package:food_delivery/src/models/orders/index.dart';
import 'package:food_delivery/src/models/serializers.dart';


export 'auth/index.dart';
export 'company/index.dart';
export 'orders/index.dart';
export 'orders/status_order.dart';

part 'index.g.dart';
part 'app_state.dart';