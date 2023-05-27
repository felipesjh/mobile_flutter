import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Loja"),
          ),
          body: ListView(
            children: [
              Wrap(
                children: const [
                  Quadradinho("Informações", Icon(Icons.ac_unit_sharp,)),            )),
                  Quadradinho("Catalogo", Icon(Icons.ac_unit_sharp,)),
                  Quadradinho("Localização",Icon(Icons.ac_unit_sharp,)),
                  Quadradinho("Chat",Icon(Icons.ac_unit_sharp,)),
                ],
              ),
            ],
          )),
    );
  }
}

class Quadradinho extends StatelessWidget {
  final String descricao;
  final Icon icone;
  const Quadradinho(this.descricao, this.icone, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        color: Colors.grey,
        width: 120,
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(descricao),
          ],
        ),
      ),
    );
  }
}
