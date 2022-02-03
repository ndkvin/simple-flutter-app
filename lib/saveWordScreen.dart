import 'package:flutter/material.dart';

class SavedWordScreen extends StatelessWidget {
  var savedWord = [];
  var empty = [];
  SavedWordScreen({required this.savedWord});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Kata')),
      body: Text(savedWord.join(' '))
    );
  }
}