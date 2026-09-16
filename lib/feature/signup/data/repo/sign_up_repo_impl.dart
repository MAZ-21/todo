import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo/feature/signup/data/auth/sign_up_auth.dart';
import 'package:todo/feature/signup/data/repo/sign_up_repo.dart';

class SignUpRepoImpl extends SignUpRepo {
  final SignUpAuth authService;
  SignUpRepoImpl({required this.authService});
  @override
  Future<UserCredential> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final response = await authService.signInWithEmailPassword(
        email,
        password,
      );
      return response;
    } catch (e) {
      throw Exception('Sign in failed: ${e.toString()}');
    }
  }

  @override
  Future<UserCredential> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final response = await authService.signUpWithEmailPassword(
        email,
        password,
      );
      return response;
    } catch (e) {
      throw Exception('Sign in failed: ${e.toString()}');
    }
  }
}
