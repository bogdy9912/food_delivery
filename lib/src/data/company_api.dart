import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery/src/models/company/index.dart';

import 'search_index.dart';

class CompanyApi {
  CompanyApi({required FirebaseFirestore firestore})
      : _firestore = firestore;

  final FirebaseFirestore _firestore;

  Future<void> createCompany({
    required String name,
    required double rating,
    required String image,
    required String openHour,
    required String closeHour,
    required String city,
  }) async {
    final DocumentReference ref = _firestore.collection('NOT USE').doc();
    final Company newCompany = Company((CompanyBuilder b) {
      b
        ..id = ref.id
        ..name = name
        ..city = city
        ..rating = rating
        ..closeHour = closeHour
        ..openHour = openHour
        ..image = image
        ..searchIndex = ListBuilder<String>(<String>[name].searchIndex);
    });
    await _firestore.doc('companies/${newCompany.id}').set(newCompany.json!);
  }

  Future<List<Company>> getCompanies() async {
    final QuerySnapshot result = await _firestore.collection('companies').get();

    final List<QueryDocumentSnapshot> docs = result.docs;

    return docs.map((QueryDocumentSnapshot e) => Company.fromJson(e.data())).toList();
  }

  Future<List<Company>> searchCompanies(String query) async {
    final QuerySnapshot result =
        await _firestore.collection('companies').where('searchIndex', arrayContains: query).get();
    final List<QueryDocumentSnapshot> docs = result.docs;
    print(docs.map((QueryDocumentSnapshot e) => Company.fromJson(e.data())).toList());
    return docs.map((QueryDocumentSnapshot e) => Company.fromJson(e.data())).toList();
  }

  Stream<Meniu> getMeniu(String companyId) {
    print('data: $companyId');
    return _firestore
        .collection('companies/$companyId/meniu')
        .where('date', isEqualTo: 'now')
        .snapshots()
        .map((QuerySnapshot snapshot) => Meniu.fromJson(snapshot.docs.first.data()));
  }

}
