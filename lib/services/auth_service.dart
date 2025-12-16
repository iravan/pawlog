class AuthService {
  Future<void> signOut() async {
    // No-op since we're not using external auth
  }

  bool get isSignedIn => true; // Always signed in when using bypass
}
