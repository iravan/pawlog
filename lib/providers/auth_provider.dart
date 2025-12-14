import 'package:flutter/foundation.dart';
import '../services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  final AuthService _authService = AuthService();
  bool _isAuthenticated = false;

  bool get isAuthenticated => _isAuthenticated;

  Future<bool> signInWithGoogle() async {
    final success = await _authService.signInWithGoogle();
    if (success) {
      _isAuthenticated = true;
      notifyListeners();
    }
    return success;
  }

  Future<bool> signInWithApple() async {
    final success = await _authService.signInWithApple();
    if (success) {
      _isAuthenticated = true;
      notifyListeners();
    }
    return success;
  }

  Future<void> signOut() async {
    await _authService.signOut();
    _isAuthenticated = false;
    notifyListeners();
  }

  void bypassLogin() {
    _isAuthenticated = true;
    notifyListeners();
  }
}

