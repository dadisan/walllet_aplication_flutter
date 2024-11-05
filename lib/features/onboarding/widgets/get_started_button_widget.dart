import 'package:flutter/material.dart';
import 'package:wallet_app/core/constants/color_constants.dart';
import 'package:wallet_app/features/wallet_dashboard/screen/dashboard_screen.dart';

class GetStartedButtonWidget extends StatelessWidget {
  const GetStartedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorConstants.greenColor,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: () {
        // Navigasi ke Dashboard
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DashboardScreen()),
        );
      },
      child: const Text(
        'Get Started',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
