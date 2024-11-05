import 'package:flutter/material.dart';

class TransactionListWidget extends StatelessWidget {
  final List<Map<String, dynamic>> transactions = [
    {
      'title': 'Dribbble Premium',
      'date': '3 Dec 2021',
      'amount': '-\$180',
      'color': Colors.red,
      'image': 'assets/images/dribbble.png' // Path gambar untuk transaksi
    },
    {
      'title': 'Snapchat Ads',
      'date': '3 Dec 2021',
      'amount': '+\$24',
      'color': Colors.green,
      'image': 'assets/images/snapchat.png' // Path gambar untuk transaksi
    },
    {
      'title': 'Skype Premium',
      'date': '3 Dec 2021',
      'amount': '-\$60',
      'color': Colors.red,
      'image': 'assets/images/skype.png' // Path gambar untuk transaksi
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1, // 1 kolom
        childAspectRatio: 4, // Rasio lebar terhadap tinggi
        mainAxisSpacing: 8.0, // Jarak antar item
      ),
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        final transaction = transactions[index];
        return Card(
          elevation: 4,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[200],
              child: Image.asset(
                transaction['image'], // Menggunakan gambar dari asset
                width: 30, // Atur lebar gambar
                height: 30, // Atur tinggi gambar
              ),
            ),
            title: Text(
              transaction['title'],
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(transaction['date']),
            trailing: Text(
              transaction['amount'],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: transaction['color'],
              ),
            ),
          ),
        );
      },
    );
  }
}
