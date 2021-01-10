import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:meta/meta.dart';

class AuthApi {
  AuthApi({@required FirebaseFirestore firestore, @required FirebaseAuth auth})
      : assert(firestore != null),
        assert(auth != null),
        _auth = auth,
        _firestore = firestore;

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  Future<AppUser> login({@required String email, @required String password}) async {
    final UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
    final User user = result.user;

    final DocumentSnapshot data = await _firestore.doc('users/${user.uid}').get();

    return AppUser.fromJson(data);
  }
}
