import 'package:ecommerce_shopping/consts/consts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  // Login method
  Future<UserCredential?> loginMethod({email, password, context}) async {
    UserCredential userCredential;

    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      VxToast.show(
        context,
        msg: e.toString(),
      );
    }
  }
}
