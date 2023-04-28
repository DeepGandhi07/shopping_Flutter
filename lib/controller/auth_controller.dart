import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_shopping/consts/consts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var isLoading = false.obs;
  // textControllers
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  // Login method
  Future<UserCredential?> loginMethod({context}) async {
    UserCredential? userCredential;

    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (context != null) {
        VxToast.show(
          context,
          msg: e.toString(),
        );
      }
      return null;
    }
  }
  //   try {
  //     await auth.signInWithEmailAndPassword(
  //         email: emailController.text, password: passwordController.text);
  //   } on FirebaseAuthException catch (e) {
  //     VxToast.show(
  //       context,
  //       msg: e.toString(),
  //     );
  //   }
  //   return userCredential;
  // }

  //signUp method
  Future<UserCredential?> signUpMethod({email, password, context}) async {
    UserCredential? userCredential;

    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      VxToast.show(
        context,
        msg: e.toString(),
      );
    }
    return userCredential;
  }

  // Storing data method

  storeUserData({name, password, email}) async {
    if (currentUser != null) {
      DocumentReference store =
          await firestore.collection(usersCollection).doc(currentUser!.uid);
      store.set({
        'name': name,
        'password': password,
        'email': email,
        'imageUrl': '',
        'id': currentUser!.uid,
      });
    }
  }

  //SignOut method
  signOutMethod(context) async {
    try {
      await auth.signOut();
    } catch (e) {
      VxToast.show(
        context,
        msg: e.toString(),
      );
    }
  }
}
