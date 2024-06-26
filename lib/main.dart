import 'package:flutter/material.dart';
import 'package:flutter_natyaapp/pages/home_page.dart';
import 'package:flutter_natyaapp/pages/login_page.dart';
import 'package:flutter_natyaapp/pages/onboardingone_page.dart';

import 'pages/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/onboardingone-page': (context) => OnboardingonePage(),
        '/login-page': (context) => LoginPage(),
        '/home-page': (context) => HomePage(),
      },
    );
  }
}
