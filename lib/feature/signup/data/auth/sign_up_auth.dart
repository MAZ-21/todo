import 'package:firebase_auth/firebase_auth.dart';

class SignUpAuth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // get current auth
  User? getCurrentUser() {
    return _firebaseAuth.currentUser;
  }

  //sing user in
  Future<UserCredential> signInWithEmailPassword(
    String email,
    String password,
  ) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message);
    }
  }

  //sign user out
  Future<void> singOut() async {
    return await _firebaseAuth.signOut();
  }

  //sign user up
  Future<UserCredential> signUpWithEmailPassword(
    String email,
    String password,
  ) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message);
    }
  }
}
