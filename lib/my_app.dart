// Qué es stateless?
// Un stateless widget es un Widget de Flutter sin estados.
// Generalmente estos widgets se utilizan cuando la vista no requiere mucha lógica o cambios de estado.
import 'package:curso_flutter/views/home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      //Cada vista debería tener su scaffold. Salvo excepciones
      // Depende del contexto.
      home: const Home(),
    );
  }
}
