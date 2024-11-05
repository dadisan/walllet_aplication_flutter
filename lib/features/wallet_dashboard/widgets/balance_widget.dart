import 'package:flutter/material.dart';
import 'package:wallet_app/core/constants/color_constants.dart';
import 'package:wallet_app/features/transaction_management/screen/transaction_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Impor ikon FontAwesome

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TransactionScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorConstants.accentColor,
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.paperPlane, color: Colors.black), // Ikon paper-plane warna hitam
                  SizedBox(width: 8),
                  Text(
                    'Transfer',
                    style: TextStyle(
                      color: Colors.black, // Teks warna hitam
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TransactionScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorConstants.greenColor,
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.download, color: Colors.black), // Ikon download warna hitam
                  SizedBox(width: 8),
                  Text(
                    'Request',
                    style: TextStyle(
                      color: Colors.black, // Teks warna hitam
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
