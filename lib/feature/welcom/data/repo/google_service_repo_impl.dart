import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo/feature/welcom/data/auth/google_sign_in.dart';
import 'package:todo/feature/welcom/data/repo/google_service_repo.dart';

class GoogleServiceRepoImpl extends GoogleServiceRepo {
  final GoogleSignInService googleSignInService;

  GoogleServiceRepoImpl({required this.googleSignInService});

  @override
  Future<UserCredential> googleSignIn() async {
    try {
      final response = await googleSignInService.signInWithGoogle();
      return response;
    } catch (e) {
      throw Exception('Google sign in failed: ${e.toString()}');
    }
  }
}
