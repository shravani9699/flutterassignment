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
            "Netflix ",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(41, 203, 21, 231),
        ),
        body: ListView.builder(
          itemCount: 10,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "WEB SERIES YOU MUST WATCH!!!!",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network(
                            "https://tse3.mm.bing.net/th?id=OIP.ijnbIXDEFkej1FbYkIiW3gHaKM&pid=Api&P=0&h=180"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network(
                            "https://tse4.mm.bing.net/th?id=OIP.nn1w2LESImrZCdJ6D8f4GgHaE8&pid=Api&P=0&h=180"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network(
                            "https://tse2.mm.bing.net/th?id=OIP.KqofES26Rxdvtn0xD706-AHaKe&pid=Api&P=0&h=180"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network(
                            "https://tse3.mm.bing.net/th?id=OIP.6A-bz94W2OVilQSU2NXehwHaFj&pid=Api&P=0&h=180"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network(
                            "https://images.lifestyleasia.com/wp-content/uploads/sites/7/2020/11/19143936/Mismatched__Season_1__Hot_Summer_Cold_Vibes__1695747__00_15_39_15__939620-min-scaled.jpg"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network(
                            "https://tse1.mm.bing.net/th?id=OIP.XGDPqzlDPOjTOm9sVQjamQHaK-&pid=Api&P=0&h=180"),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
