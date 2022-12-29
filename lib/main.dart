import 'package:dailyrn/design/theme.dart';
import 'package:dailyrn/pages/Register_screen.dart';
import 'package:dailyrn/pages/home_screen.dart';
import 'package:dailyrn/pages/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: const [
        Locale('he', 'IL'),
        Locale('en', 'US'),
      ],
      title: 'Flutter Demo',
      theme: Themes.normal,
      initialRoute: 'welcome_screen',
      routes: {
        'welcome_screen': (context) => WelcomeScreen(),
        'register_screen': (context) => RegisterScreen(),
        'home_screen': (context) => HomeScreen(),
      },
    );
  }
}
