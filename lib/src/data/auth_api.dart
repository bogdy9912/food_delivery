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


  Future<AppUser> initializeApp()async{
    final User user = _auth.currentUser;
    final DocumentSnapshot result = await _firestore.doc('users/${user.uid}').get();
    return AppUser.fromJson(result.data());
  }

  Future<AppUser> login({@required String email, @required String password}) async {
    final UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
    final User user = result.user;

    final DocumentSnapshot doc = await _firestore.doc('users/${user.uid}').get();

    return AppUser.fromJson(doc.data());
  }

  Future<AppUser> signUp(
      {@required String email,
      @required String password,
      @required String firstName,
      @required String lastName}) async {
    final UserCredential response = await _auth.createUserWithEmailAndPassword(email: email, password: password);



    final User user = response.user;


    final AppUser newUser = AppUser((AppUserBuilder b) {
      b
        ..uid = user.uid
        ..email = user.email
        ..lastName = lastName
        ..firstName = firstName;
    });

    _firestore.doc('users/${user.uid}').set(newUser.json);

    return newUser;
  }


  Future<void> signOut ()async{
    await _auth.signOut();
  }

  Future<void> forgotPassword(String email) async {
    await _auth.sendPasswordResetEmail(email: email);
  }


  Future<void> updateProfile({@required String uid, @required String lastName, @required String firstName, @required String telephone}) async {
    await _firestore.doc('users/$uid').update(<String, String>{'lastName': lastName,'firstName': firstName, 'telephone': telephone});
  }

  Future<void> updateAddresses({
    @required String uid,
    AddressPoint add,
    AddressPoint remove,
    AddressPoint edit,
  }) async {
    print('data');
    print('uid: $uid');
    print('add: $add');
    print('remove: $remove');
    print('edit: $edit');
    if (add != null) {
      print('add a intrat');
      final DocumentReference ref = _firestore.collection('NOT USE').doc();
      final AddressPoint newAdd = add.rebuild((AddressPointBuilder b) => b.id = ref.id);
      print('add: $newAdd');
      _firestore.doc('users/$uid').update(<String, dynamic>{
        'addresses': <String, dynamic>{'${newAdd.id}': newAdd.json}
      });
      print('add a terminat');
    } else if (remove != null) {
      await _firestore.doc('users/$uid').update(<String, dynamic>{
        'addresses': <String, dynamic>{'${remove.id}': FieldValue.delete()}
      });
    } else if (edit != null) {
      await _firestore.doc('users/$uid').update(<String, dynamic>{
        'addresses': <String, dynamic>{'${edit.id}': edit.json}
      });
    }
  }

}
