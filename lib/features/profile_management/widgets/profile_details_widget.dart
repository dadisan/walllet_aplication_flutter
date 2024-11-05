import 'package:flutter/material.dart';

class ProfileDetailsWidget extends StatelessWidget {
  const ProfileDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text('Nama'),
          subtitle: Text('David Dimas Santana'),
        ),
        ListTile(
          title: Text('Email'),
          subtitle: Text('david@example.com'),
        ),
        ListTile(
          title: Text('Phone'),
          subtitle: Text('+62 812 3456 7890'),
        ),
      ],
    );
  }
}
