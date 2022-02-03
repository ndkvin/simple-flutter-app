import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'saveWordScreen.dart';

class randomWord extends StatefulWidget {
  @override
  _RandomWordState createState() => _RandomWordState();
}

class _RandomWordState extends State<randomWord> {
  var savedWords = [];
  String random = WordPair.random().asString;

  void _changeWord() {
    setState(() {
      random = WordPair.random().asString;
    });
  }

  void _saveWord() {
    savedWords.add(random);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SavedWordScreen(savedWord: savedWords)) 
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Words'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(random, style: TextStyle(fontSize: 40)),
            IconButton(icon: Icon(Icons.favorite_border), onPressed: _saveWord)
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeWord,
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}