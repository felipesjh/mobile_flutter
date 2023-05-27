import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'atualiza_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List> getUsuarios() async {
    var url = Uri.parse('https://64710ea33de51400f725486b.mockapi.io/usuarios');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return jsonDecode(utf8.decode(response.bodyBytes));
    } else {
      throw Exception('Erro ao carregar dados do Servidor');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Usuários'),
        ),
        body: FutureBuilder<List>(
          future: getUsuarios(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text('Erro ao carregar usuários'),
              );
            }

            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              AtualizaPage(usuario: snapshot.data![index]),
                          fullscreenDialog: true,
                        ),
                      );
                    },
                    leading: CircleAvatar(
                      child: Text(snapshot.data![index]['id'].toString()),
                    ),
                    title: Text(snapshot.data![index]['nome']),
                    subtitle: Text(snapshot.data![index]['id']),
                    trailing: Text(snapshot.data![index]['telefone']),
                  );
                },
              );
            }

            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ));
  }
}
