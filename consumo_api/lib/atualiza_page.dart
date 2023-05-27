import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AtualizaPage extends StatefulWidget {
  Map<String, dynamic> usuario;

  AtualizaPage({super.key, required this.usuario});

  @override
  State<AtualizaPage> createState() => _AtualizaPageState();
}

class _AtualizaPageState extends State<AtualizaPage> {
  final _nomeController = TextEditingController();
  final _telefoneController = TextEditingController();
  final _websiteController = TextEditingController();

  @override
  void initState() {
    _nomeController.text = widget.usuario['nome'];
    _telefoneController.text = widget.usuario['telefone'];
    _websiteController.text = widget.usuario['website'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Usuário')),
        body: ListView(
          padding: const EdgeInsets.all(12),
          children: [
            TextFormField(
              controller: _nomeController,
            ),
            TextFormField(
              controller: _telefoneController,
            ),
            TextFormField(
              controller: _websiteController,
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
                onPressed: () {
                  atualizaUsuario(id: widget.usuario['id']);
                },
                child: const Text('Atualizar')),
          ],
        ));
  }

  void atualizaUsuario({required int id}) async {
    var url =
        Uri.parse('https://64710ea33de51400f725486b.mockapi.io/usuarios/$id');
    var response = await http.put(url);

    if (response.statusCode == 200) {
      await ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Atualizado com sucesso'),
          backgroundColor: Colors.greenAccent,
        ),
      );
      Navigator.pop(context);
    } else {
      throw Exception('Erro ao carregar dados do Servidor');
    }
  }
}
