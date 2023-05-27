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
          title: Text('Meu Flutterzinho'),
        ),
        body: ListView(children: [
          Tarefa('Aprender f', Icon(Icons.favorite)),
          Tarefa('Aprender q', Icon(Icons.favorite)),
          Tarefa('Aprender d', Icon(Icons.favorite)),
          Tarefa('Aprender 5', Icon(Icons.favorite)),
          Tarefa('Aprender f', Icon(Icons.favorite)),
          Tarefa('Aprender eeeeeeeeeeeeeeeq', Icon(Icons.favorite)),
          Tarefa('Aprender d', Icon(Icons.favorite)),
          Tarefa('Aprender 5', Icon(Icons.favorite)),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
      ),
    );
  }
}

class Tarefa extends StatelessWidget {
  final String nome;
  final Icon i;
  const Tarefa(this.nome, this.i, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          child: Stack(
        children: [
          Container(
            color: Colors.blue,
            height: 140,
          ),
          Container(
            color: Colors.blueGrey,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.black26,
                  width: 72,
                  height: 100,
                ),
                Container(
                  width: 200,
                  child: Text(
                    nome,
                    style: TextStyle(
                        fontSize: 24, overflow: TextOverflow.ellipsis),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {}, child: Icon(Icons.arrow_drop_up))
              ],
            ),
          )
        ],
      )),
    );
  }
}
