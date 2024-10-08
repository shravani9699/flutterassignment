import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Aspect Ratio",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: AspectRatio(
            aspectRatio: 1, // Set to 1 for a square aspect ratio
            child: Container(
              color: Colors.yellow,
              child: ClipRect(
                child: Image.network(
                  "https://tse3.mm.bing.net/th?id=OIP.XQEru97BpqB95JZOJv79rAHaJQ&pid=Api&P=0&h=180",
                  fit: BoxFit
                      .cover, // Maintain aspect ratio while filling the container
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
