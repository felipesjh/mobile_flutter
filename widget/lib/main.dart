import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              color: Colors.deepOrange,
              width: 350,
              height: 100,
              child: const Text(
                "Bloco 1",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 60,
                ),
              )),
          Container(
            color: Colors.lightGreenAccent,
            width: 350,
            height: 100,
            child: const Text(
              "Bloco 2",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 60,
              ),
            ),
          ),
          Container(
            color: Colors.brown,
            width: 350,
            height: 100,
            child: const Text(
              "Bloco 3",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 60,
              ),
            ),
          ),
          Container(
              color: Colors.lightGreenAccent,
              width: 350,
              height: 100,
              child: const Text(
                "Bloco 4",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 60,
                ),
              )),
          ElevatedButton(
              onPressed: () {
                print("Você apertou o botão");
              },
              child: const Text("Aperte o botão")),
        ],
      ),
    );
  }
}
