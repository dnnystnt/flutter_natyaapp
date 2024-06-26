import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_natyaapp/shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/onboardingone-page');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.only(bottom: 40),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/natyalogo.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
