import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alejandro Vargas')),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
            child: Text(
          '''Primera pantalla''',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 34),
        )),
      ),
    );
  }
}
