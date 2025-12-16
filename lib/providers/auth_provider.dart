import 'package:flutter/foundation.dart';
import '../services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  final AuthService _authService = AuthService();
  bool _isAuthenticated = false;

  bool get isAuthenticated => _isAuthenticated;


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

