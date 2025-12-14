import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AuthService {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<bool> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? account = await _googleSignIn.signIn();
      return account != null;
    } catch (e) {
      print('Error signing in with Google: $e');
      return false;
    }
  }

  Future<bool> signInWithApple() async {
    try {
      final credential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );
      return credential.userIdentifier?.isNotEmpty ?? false;
    } catch (e) {
      print('Error signing in with Apple: $e');
      return false;
    }
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
  }

  bool get isSignedIn => _googleSignIn.currentUser != null;
}

