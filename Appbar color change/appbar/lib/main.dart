import 'package:flutter/material.dart';

void main() {
  runApp(const AppBarColorApp());
}

class AppBarColorApp extends StatefulWidget {
  const AppBarColorApp({super.key});

  @override
  State<AppBarColorApp> createState() => _AppBarColorAppState();
}

class _AppBarColorAppState extends State<AppBarColorApp> {
  bool colorChange = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "AppBar Color",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("AppBar Color App"),
          centerTitle: true,
          backgroundColor: colorChange ? Colors.amber : Colors.blue,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Change AppBar color"),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              colorChange = !colorChange;
            });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
