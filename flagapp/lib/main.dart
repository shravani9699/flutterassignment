import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "India Flag",
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("India Flag"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 45,
              color: Colors.orange,
            ),
            Container(
              width: 300,
              height: 45,
              color: Colors.white,
              child: Center(
                child: Image.network(
                  "https://tse3.mm.bing.net/th?id=OIP.VrZ49LjdWS-By5-7XuVqPQHaHZ&pid=Api&P=0&h=180",
                  height: 30, // Adjust height as needed
                ),
              ),
            ),
            Container(
              width: 300,
              height: 45,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
