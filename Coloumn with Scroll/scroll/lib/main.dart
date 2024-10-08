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
            "Column Demo",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 243, 33, 145),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                  "https://tse2.mm.bing.net/th?id=OIP.xung4mlBfvUR3RKzjnRY2AHaEK&pid=Api&P=0&h=180"),
              Container(
                height: 100,
                width: 100,
                color: const Color.fromARGB(255, 232, 232, 227),
              ),
              Image.network(
                  "https://tse4.mm.bing.net/th?id=OIP.HxV79tFMPfBAIo0BBF-sOgHaEy&pid=Api&P=0&h=180"),
              Container(
                height: 100,
                width: 100,
                color: const Color.fromARGB(255, 236, 236, 234),
              ),
              Image.network(
                  "https://tse1.mm.bing.net/th?id=OIP.amEbZWd9JRcIxkyVtYNODwHaE8&pid=Api&P=0&h=180"),
              Container(
                height: 100,
                width: 100,
                color: const Color.fromARGB(255, 248, 247, 247),
              ),
              Image.network(
                  "https://tse2.mm.bing.net/th?id=OIP.Bx9DQIvKlnPzcOBcncg40gHaJ4&pid=Api&P=0&h=180"),
              Container(
                height: 200,
                width: 200,
                color: const Color.fromARGB(255, 252, 252, 244),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
