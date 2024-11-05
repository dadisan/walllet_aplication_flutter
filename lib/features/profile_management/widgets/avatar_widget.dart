import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundImage: AssetImage('assets/images/avatar.jpg'), // Menggunakan AssetImage untuk gambar lokal
    );
  }
}
