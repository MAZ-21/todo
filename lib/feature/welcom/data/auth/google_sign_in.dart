import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GoogleSignInService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<UserCredential> signInWithGoogle() async{
    GoogleSignIn googleSignIn = GoogleSignIn.instance;
    await googleSignIn.initialize();
    GoogleSignInAccount account = await googleSignIn.authenticate();

    final OAuthCredential credential = GoogleAuthProvider.credential(
      idToken: account.authentication.idToken,
    );
    UserCredential userCredential = await _auth.signInWithCredential(credential);
    return userCredential;
  } 
}