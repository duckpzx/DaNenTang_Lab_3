import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String username;

  const HomeScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    const purple = Color(0xFF5C6BC0);

    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F8),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.account_circle, size: 100, color: purple),
            const SizedBox(height: 20),
            Text(
              'Hello, $username!',
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 40),
            OutlinedButton(
              onPressed: () =>
                  Navigator.pushNamedAndRemoveUntil(context, '/login', (_) => false),
              style: OutlinedButton.styleFrom(
                foregroundColor: purple,
                side: const BorderSide(color: purple),
                shape: const StadiumBorder(),
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
              ),
              child: const Text('Đăng xuất', style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
