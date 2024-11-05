import 'package:flutter/material.dart';
import 'package:wallet_app/features/transfer_status/screen/success_screen.dart'; // Make sure to import the SuccessScreen

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  _TransactionScreenState createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  String _input = ''; // Variable to store numeric input

  void _onNumberPressed(String value) {
    setState(() {
      _input += value;
    });
  }

  void _onBackspacePressed() {
    if (_input.isNotEmpty) {
      setState(() {
        _input = _input.substring(0, _input.length - 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfer', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            // Display the input amount
            Text(
              '\$${_input.isEmpty ? '0' : _input}',
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            // Recipient information
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: const ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.jpg'), // Replace with an appropriate image URL
                ),
                title: Text('David Dimas Santana', style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('Wells Fargo'),
                trailing: Icon(Icons.add),
              ),
            ),
            const SizedBox(height: 20),
            // Category selection
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: DropdownButtonFormField<String>(
                decoration: const InputDecoration.collapsed(hintText: ''),
                hint: const Text('Category', style: TextStyle(fontWeight: FontWeight.bold)),
                items: const [
                  DropdownMenuItem(value: 'Movie', child: Text('Movie')),
                  DropdownMenuItem(value: 'Shopping', child: Text('Shopping')),
                  DropdownMenuItem(value: 'Bills', child: Text('Bills')),
                ],
                onChanged: (value) {
                  // Handle selected category
                },
              ),
            ),
            const SizedBox(height: 20),
            // Number pad
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                children: [
                  for (int i = 1; i <= 9; i++) _buildNumpadButton(i.toString()),
                  const SizedBox(), // Empty space for layout consistency
                  _buildNumpadButton('0'),
                  IconButton(
                    icon: const Icon(Icons.backspace, color: Colors.black, size: 28),
                    onPressed: _onBackspacePressed,
                  ),
                ],
              ),
            ),
            // Send Money button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SuccessScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Send Money',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildNumpadButton(String text) {
    return ElevatedButton(
      onPressed: () {
        _onNumberPressed(text);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(24),
        side: const BorderSide(color: Colors.black12),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 24, color: Colors.black),
      ),
    );
  }
}
