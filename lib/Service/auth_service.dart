// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
//
// class UserAuthService{
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//
//   //Login Function
//
//   Future<User> LogIn(String e_mail, String password) async {
//     var userCredential = await _auth.signInWithEmailAndPassword(email: e_mail, password: password);
//     var user = userCredential.user;
//
//     if (user != null) {
//       return user;
//     } else {
//       return Future.error("User not found!");
//     }
//   }
//   Future<User> SignUp(String name, String e_mail, String password) async{
//     var userCredential = await _auth. createUserWithEmailAndPassword(email: e_mail, password: password);
//
//     await _firestore.collection("Person").doc(userCredential.user!.uid).set({
//
//       'userName' : name,
//       'email' : e_mail
//     });
//     return userCredential.user!;
//   }
//
//
//
// }