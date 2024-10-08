import 'package:flutter/material.dart';

void main() {
  runApp(const ContainerColorApp());
}

class ContainerColorApp extends StatefulWidget {
  const ContainerColorApp({super.key});

  @override
  State<ContainerColorApp> createState() => _ContainerColorAppState();
}

class _ContainerColorAppState extends State<ContainerColorApp> {
  bool colorChange = true; // Changed variable name to follow naming conventions

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Container Color App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container Color App"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Container(
            width: 250,
            height: 250,
            color: colorChange
                ? const Color.fromARGB(255, 189, 7, 255)
                : const Color.fromARGB(
                    255, 33, 243, 117), // Fixed Colors reference
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              colorChange = !colorChange; // Simplified toggle logic
            });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
