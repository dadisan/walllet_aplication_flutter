import 'package:flutter/material.dart';
import 'package:wallet_app/core/constants/color_constants.dart';
import 'package:wallet_app/features/onboarding/screen/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banking App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: ColorConstants.backgroundColor,
      ),
      home: const WelcomeScreen(),
    );
  }
}
