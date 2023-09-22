import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('Alejandro Vargas')),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
            child: Text(
          '''Estoy mirando como crear un texto de varias lineas en Flutter para futuras apps''',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 34),
        )),
      ),
    ),
  ));
}
