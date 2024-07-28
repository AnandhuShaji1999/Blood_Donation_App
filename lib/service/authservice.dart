import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthSrvice {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> singUpwithEmailandPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } on FirebaseException catch (e) {
      if (e.code == 'email-already-in-use') {
        print("the email already exist");
      } else {
        print("an error:${e.code}");
      }
    }
    return null;
  }

  Future<User?> SignInwithEmailandPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print("some eroor");
    }
    return null;
  }
}
