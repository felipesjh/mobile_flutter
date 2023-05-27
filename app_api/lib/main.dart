import 'package:app_api/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:app_api/screens/home.dart';

void main() {
  runApp(const PrevisaoTempo());
}

class PrevisaoTempo extends StatelessWidget {
  const PrevisaoTempo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      title: "Previsão do Tempo",
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
    );
  }
}
