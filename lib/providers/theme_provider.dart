import 'package:flutter/material.dart';
import '../services/storage_service.dart';

class ThemeProvider extends ChangeNotifier {
  Color _primaryColor = const Color(0xFF0D6EFD); // Bootstrap primary blue

  Color get primaryColor => _primaryColor;

  ThemeProvider() {
    _loadThemeColor();
  }

  Future<void> _loadThemeColor() async {
    final colorValue = await StorageService.getThemeColor();
    if (colorValue != null) {
      _primaryColor = Color(colorValue);
      notifyListeners();
    }
  }

  Future<void> setPrimaryColor(Color color) async {
    _primaryColor = color;
    await StorageService.saveThemeColor(color.value);
    notifyListeners();
  }

  // Predefined color options
  static final List<Color> colorOptions = [
    const Color(0xFF0D6EFD), // Bootstrap blue
    const Color(0xFF198754), // Green
    const Color(0xFFDC3545), // Red
    const Color(0xFFFFC107), // Yellow/Amber
    const Color(0xFF6F42C1), // Purple
    const Color(0xFFFD7E14), // Orange
    const Color(0xFF20C997), // Teal
    const Color(0xFF6610F2), // Indigo
    const Color(0xFFE83E8C), // Pink
    const Color(0xFF6C757D), // Gray
  ];
}
