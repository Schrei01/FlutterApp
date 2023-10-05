import 'package:flutter/material.dart';
import 'package:flutter_app/models/user.dart';

class OtherPage extends StatelessWidget {
  final User userData;
  const OtherPage({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New page'),
      ),
      body: Center(
        child: TextButton(
          child: Text('Hola ${userData.name} tienes ${userData.age}'),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}
