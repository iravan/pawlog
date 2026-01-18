import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'l10n/app_localizations.dart';
import 'services/storage_service.dart';
import 'providers/auth_provider.dart';
import 'providers/cat_provider.dart';
import 'providers/theme_provider.dart';
import 'pages/login_page.dart';
import 'pages/main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await StorageService.init();
  runApp(const MyApp());
}

class _MyAppState extends State<MyApp> {
  String? _initialRoute;

  @override
  void initState() {
    super.initState();
    _checkFirstRun();
  }

  Future<void> _checkFirstRun() async {
    final hasSeenOnboarding = await StorageService.hasSeenOnboarding();
    if (mounted) {
      setState(() {
        _initialRoute = hasSeenOnboarding ? '/main' : '/login';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_initialRoute == null) {
      // Show a loading screen while checking first run
      return MaterialApp(
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en'),
          Locale('fr'),
          Locale('de'),
          Locale('es'),
          Locale('it'),
          Locale('pt'),
          Locale('nl'),
          Locale('zh', 'CN'),
          Locale('zh', 'HK'),
          Locale('ja'),
          Locale('ko'),
          Locale('th'),
          Locale('vi'),
        ],
        home: Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
    }

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(
          create: (_) {
            final provider = CatProvider();
            provider.initialize();
            return provider;
          },
        ),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, _) => MaterialApp(
        title: 'PawsLog',
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en'), // English
          Locale('fr'), // French
          Locale('de'), // German
          Locale('es'), // Spanish
          Locale('it'), // Italian
          Locale('pt'), // Portuguese
          Locale('nl'), // Dutch
          Locale('zh', 'CN'), // Chinese Simplified
          Locale('zh', 'HK'), // Chinese Traditional Hong Kong
          Locale('zh', 'TW'), // Chinese Traditional Taiwan
          Locale('ja'), // Japanese
          Locale('ko'), // Korean
          Locale('th'), // Thai
          Locale('vi'), // Vietnamese
        ],
        theme: ThemeData(
          // Bootstrap-like color scheme
          colorScheme: ColorScheme.light(
            primary: themeProvider.primaryColor,
            secondary: const Color(0xFF6C757D), // Bootstrap secondary gray
            surface: Colors.white,
            background:
                const Color(0xFFF8F9FA), // Bootstrap light gray background
            error: const Color(0xFFDC3545), // Bootstrap danger red
            onPrimary: Colors.white,
            onSecondary: Colors.white,
            onSurface: const Color(0xFF212529), // Bootstrap dark text
            onBackground: const Color(0xFF212529),
            onError: Colors.white,
            brightness: Brightness.light,
          ),
          useMaterial3: true,
          scaffoldBackgroundColor: const Color(0xFFF8F9FA),
          // Bootstrap card style - subtle shadow, rounded corners
          cardTheme: CardThemeData(
            elevation: 1,
            shadowColor: Colors.black.withOpacity(0.1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // Bootstrap default
              side: BorderSide(
                color: Colors.grey.shade300,
                width: 1,
              ),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            color: Colors.white,
          ),
          // Bootstrap button styles
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6), // Bootstrap default
              ),
              backgroundColor: themeProvider.primaryColor,
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              side: BorderSide(color: themeProvider.primaryColor, width: 1),
              foregroundColor: themeProvider.primaryColor,
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: themeProvider.primaryColor,
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          // Bootstrap input style
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: themeProvider.primaryColor, width: 2),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: const BorderSide(color: Color(0xFFDC3545)),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          ),
          // Bootstrap AppBar
          appBarTheme: AppBarTheme(
            elevation: 0,
            centerTitle: false,
            backgroundColor: Colors.white,
            foregroundColor: const Color(0xFF212529),
            titleTextStyle: const TextStyle(
              color: Color(0xFF212529),
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
            iconTheme: const IconThemeData(
              color: Color(0xFF212529),
            ),
          ),
          // Bootstrap typography
          textTheme: const TextTheme(
            displayLarge: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w500,
              color: Color(0xFF212529),
            ),
            displayMedium: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w500,
              color: Color(0xFF212529),
            ),
            displaySmall: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
              color: Color(0xFF212529),
            ),
            headlineMedium: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Color(0xFF212529),
            ),
            titleLarge: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Color(0xFF212529),
            ),
            titleMedium: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xFF212529),
            ),
            bodyLarge: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xFF212529),
            ),
            bodyMedium: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF6C757D),
            ),
            bodySmall: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xFF6C757D),
            ),
          ),
          // Bootstrap-style FloatingActionButton
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: themeProvider.primaryColor,
            foregroundColor: Colors.white,
            elevation: 4,
            highlightElevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            sizeConstraints: const BoxConstraints.tightFor(
              width: 56,
              height: 56,
            ),
          ),
        ),
        initialRoute: _initialRoute,
        routes: {
          '/login': (context) => const LoginPage(),
          '/main': (context) => const MainPage(),
        },
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
