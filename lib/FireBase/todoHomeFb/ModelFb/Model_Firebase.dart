import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? email;
  String? password;
  String? name;
  String? uid;
  UserModel({ this.email, this.password, this.name, this.uid});

  factory UserModel.fromJson(DocumentSnapshot data) {
    return UserModel(
      email: data['email'],
      
      name: data['name'],
      uid: data['uid'],
    );
  }
  Map<String,dynamic>toJson(){
    return {
      'email':email,
      'name':name,
      'uid':uid,
      'password':password
    
    };
  }
}
