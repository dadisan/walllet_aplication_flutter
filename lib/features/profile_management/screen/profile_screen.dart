import 'package:flutter/material.dart';
import 'package:wallet_app/features/profile_management/widgets/avatar_widget.dart';
import 'package:wallet_app/features/profile_management/widgets/profile_details_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AvatarWidget(),
            SizedBox(height: 20),
            ProfileDetailsWidget(),
          ],
        ),
      ),
    );
  }
}
