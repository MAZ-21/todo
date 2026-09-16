import 'package:firebase_auth/firebase_auth.dart';

abstract class GoogleServiceRepo {
  Future<UserCredential> googleSignIn();
}