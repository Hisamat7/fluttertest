import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/FireBase/todoHomeFb/ModelFb/Model_Firebase.dart';

class Firebase_auth {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final collection = FirebaseFirestore.instance.collection('users');

  Future<UserCredential> registerUser(UserModel user) async {
    UserCredential userdata = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: user.email.toString(), password: user.password.toString());
    if (userdata.user != null) {
      FirebaseFirestore.instance
          .collection("users")
          .doc(userdata.user!.uid)
          .set({
        'uid': userdata.user!.uid,
        'email': userdata.user!.email,
        'fullname': user.name,
      });
    }
    return userdata;
  }
}
