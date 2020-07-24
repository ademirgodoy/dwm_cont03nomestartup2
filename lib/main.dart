import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();

    return MaterialApp(
      title: 'Gerador de nomes de statups',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gerador de Nomes Startups'),
        ),
        body: Center(
          child: RandomWords(),
        ),
      ),
    );
  }
}

// Teremos 2 classes:
// RandomWords: o stateful widget
// RandonWordsState: o estado de RandomWords
// Classe RandomWords (StatefulWidget):
// Aqui apenas criamos o objeto RandomWordsState,
// sobreescrevendo o método createState(),
// que é o responsável por criar o objeto que vai
// manter o estado (state) deste Widget.

class RandomWords extends StatefulWidget{
  @override
  RandomWordsState createState()=> RandomWordsState();
}

// Classe RandomWordsState:
// Representa o estado do objeto RandomWords.
//
// - Herda de State<..o stateful widget..>.
// - A maior parte da lógica do app estará aqui.
// - Esta classe armazena a lista de pares gerados,
// que crescerá "infinitamente" conforme o
// usuário role a lista, e também vai permitir favoritar
// alguns pares de palavras sendo exibidos.

class RandomWordsState extends State<RandomWords> {
  // O método build, como já vimos, cria o Widget.
  // Aqui (por enquanto ainda) será a mesma coisa que vimos
  // anteriormente, um Widget Text com o par de palavras.
  @override
  Widget build(BuildContext context) {
    final WordPair wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}