import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:food_delivery/src/models/orders/index.dart';
import 'package:intl/intl.dart';

class OrdersApi {
  const OrdersApi({required FirebaseFirestore firestore})
      : _firestore = firestore;

  final FirebaseFirestore _firestore;

  Future<List<Order>> getOrders(String? uid) async {
    final QuerySnapshot result = await _firestore.collection('users/$uid/orders').get();
    final List<QueryDocumentSnapshot> docs = result.docs;

    return docs.map((QueryDocumentSnapshot e) => Order.fromJson(e.data())).toList();
  }

  Future<void> createOrder({
    required String? uid,
    required PaymentMethod? methodOfPayment,
    required double? total, //
    required AddressPoint? addressPoint,
    required List<CartItem> products,
    required String? instructions,
    required String? companyId,
  }) async {
    final DocumentReference ref = _firestore.collection('NOT USE').doc();

    final Order order = Order((OrderBuilder b) {
      b
        ..uid = uid
        ..id = ref.id
        ..companyId = companyId
        ..methodOfPayment = methodOfPayment
        ..total = total
        ..address = addressPoint!.toBuilder()
        ..products = ListBuilder<CartItem>(products)
        ..instructions = instructions
        ..date = DateFormat('yyyy-MM-dd - kk:mm:ss').format(DateTime.now());
    });

    _firestore.doc('users/$uid/orders/${order.id}').set(order.json);
    _firestore.doc('companies/$companyId/orders/${order.id}').set(order.json);
  }
}
