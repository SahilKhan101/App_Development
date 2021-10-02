import 'package:brew_crew/models/user.dart';
import 'package:brew_crew/screens/services/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user obj based on FirebaseUser
  USER? _userFromFirebaseUser(User? user){
    return user != null ? USER(uid: user.uid) : null;
  }

  //auth change user stream
  Stream<USER?> get user{
    return _auth.authStateChanges()
        //.map((User? user) => _userFromFirebaseUser(user));  //user! <-- use this if error occurs
        .map(_userFromFirebaseUser);
  }

  //sign in anon
  Future signInAnon() async{
    try{
      UserCredential result = await _auth.signInAnonymously();  //AuthResult
      User? user = result.user;  //FirebaseUser
      return _userFromFirebaseUser(user);
    }catch(e){
      print(e.toString());
      print('oh so error occurred in was in auth.dart');
      return null;
    }
  }


  //sign in with email & password
  Future signInWithEmailAndPassword(String email, String password) async {
    try{
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return _userFromFirebaseUser(user);
    }catch(e){
      print(e.toString());
      return null;
    }
  }


  //register with email & password
  Future registerWithEmailAndPassword(String email, String password) async {
    try{
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;

      //create a new document with the user with the uid
      await DatabaseServise(uid: user!.uid).updateUserData('0', 'new crew member', 100);

      return _userFromFirebaseUser(user);
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  //sign out
  Future mySignOut() async{
    try{
      return await _auth.signOut();
    }catch(e){
      print(e.toString());
      return null;
    }
  }
}
