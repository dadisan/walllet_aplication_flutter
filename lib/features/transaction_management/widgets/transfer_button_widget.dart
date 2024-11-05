import 'package:flutter/material.dart';
import 'package:wallet_app/features/transfer_status/screen/success_screen.dart';

class TransferButtonWidget extends StatelessWidget {
  const TransferButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SuccessScreen()),
        );
      },
      child: const Text('Transfer'),
    );
  }
}
