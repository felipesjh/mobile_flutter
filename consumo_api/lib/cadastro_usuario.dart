import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CadastroUsuario extends StatefulWidget {
  const CadastroUsuario({super.key});

  @override
  State<CadastroUsuario> createState() => _CadastroUsuarioState();
}

class _CadastroUsuarioState extends State<CadastroUsuario> {
  final _formKey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();
  final _telefoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      label: Text('nome'), hintText: 'Digite seu nome'),
                  validator: (nome) {
                    if (nome == null || nome.isEmpty) {
                      return 'Digite seu nome';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      label: Text('telefone'), hintText: 'digite telefone'),
                  validator: (email) {
                    if (email == null || email.isEmpty) {
                      return 'Digite seu email';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        cadastrar();
                      }
                    },
                    child: const Text('Cadastrar'))
              ],
            ),
          ),
        ),
      ),
    );
  }

  cadastrar() async {
    var url = Uri.parse('https://64710ea33de51400f725486b.mockapi.io/usuarios');
    var response = await http.post(url, body: {
      'nome': _nomeController.text,
      'telefone': _telefoneController.text,
    });
    if (response.statusCode == 200) {
      return jsonDecode(utf8.decode(response.bodyBytes));
    } else {
      throw Exception('Erro ao carregar dados do Servidor');
    }
  }
}
