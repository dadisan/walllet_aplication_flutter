import 'package:flutter/material.dart';
import 'package:wallet_app/core/constants/color_constants.dart';
import 'package:wallet_app/features/onboarding/widgets/get_started_button_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Fullscreen background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/welcome_screen.png', // Sesuaikan path dengan pubspec.yaml
              fit: BoxFit.cover,
            ),
          ),
          // Centered "Get Started" button at the bottom with left-right padding
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 40.0), // Padding kiri dan kanan
              child: SizedBox(
                width: double.infinity, // Memastikan tombol memenuhi lebar maksimal yang tersedia
                child: const GetStartedButtonWidget(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
