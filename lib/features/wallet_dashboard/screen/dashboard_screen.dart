import 'package:flutter/material.dart';
import 'package:wallet_app/features/profile_management/screen/profile_screen.dart';
import 'package:wallet_app/features/wallet_dashboard/widgets/balance_widget.dart';
import 'package:wallet_app/features/wallet_dashboard/widgets/card_widget.dart';
import 'package:wallet_app/features/wallet_dashboard/widgets/transaction_list_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 2; // Indeks ikon tengah sebagai default

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'BankGau',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.person, color: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Card Widget
            const CardWidget(),
            const SizedBox(height: 20),
            // Balance and Actions
            const BalanceWidget(),
            const SizedBox(height: 20),
            // Recent Transactions header with horizontal icon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Recent Transactions',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.more_horiz, color: Colors.black54), // Ikon tiga titik horizontal
                  onPressed: () {
                    // Kosongkan karena hanya tampilan
                  },
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(child: TransactionListWidget()),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.credit_card),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SizedBox.shrink(), // Kosong karena diisi oleh FAB
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: '',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _selectedIndex = 2;
          });
        },
        backgroundColor: Colors.black,
        child: const Icon(Icons.qr_code_scanner, color: Colors.white, size: 30),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
