import 'package:flutter/material.dart';

// A função main() é o ponto de entrada de todo app Dart/Flutter.
// Exatamente como em C, Java ou outras linguagens.
void main() {
  // runApp infla o widget que passamos como argumento e o anexa à tela.
  runApp(const MeuApp());
}

// Em Flutter, quase tudo é uma classe que herda de um Widget.
// StatelessWidget é um widget sem estado interno. Ele é desenhado uma vez
// e não muda. Perfeito para a estrutura principal do nosso app.
class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp é um widget fundamental que nos dá o básico de um app:
    // temas, rotas de navegação, etc. É a "fundação" da casa.
    return MaterialApp(
      title: 'Calculadora de IMC',
      // home define qual será a primeira tela a ser exibida.
      home: Scaffold(
        // Scaffold é o "esqueleto" de uma tela. Ele nos dá estruturas
        // prontas como a barra no topo (AppBar) e o corpo da tela (body).
        appBar: AppBar(title: const Text('Minha Calculadora')),
        body: Padding(        // Envolvemos nossa Column com um Padding
               padding: const EdgeInsets.all(16.0),// EdgeInsets.all(16.0) aplica 16 pixels de espaçamento em todos os lados
          child: Column(
            children: <Widget>[
              const Text('Insira seus dados abaixo',
              style: TextStyle(fontSize: 25),
              ),

              const SizedBox(height: 15),// Um espaço vertical (height são os pixels de altura)

              const Text('Peso(Kg)', 
              style: TextStyle(fontSize: 20)),// Aumentando um pouco a fonte

              const SizedBox(height: 15),

              const Text('Altura(m)', style: TextStyle(fontSize: 20)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
