import 'package:flutter/material.dart';
import 'package:flutter_custom_snakbar/flutter_custom_toast.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Toast & SnackBar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                CustomToast.show(
                  context: context,
                  message: 'Toast Message',
                  icon: Icons.check,
                  backgroundColor: Colors.green,
                );
              },
              child: const Text('Show Toast'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                CustomSnackBar.show(
                  context: context,
                  message: 'SnackBar Message',
                  icon: Icons.info,
                  backgroundColor: Colors.blue,
                );
              },
              child: const Text('Show SnackBar'),
            ),
          ],
        ),
      ),
    );
  }
}