import 'package:flutter/material.dart';

void main() {
  print("Incubator");
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "core2web",
      home: TestApp(),
    );
  }
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First App'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // Center the column contents
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 119, 48, 78),
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(height: 20),
          // You can add more widgets here if needed
        ],
      ),
    );
  }
}
