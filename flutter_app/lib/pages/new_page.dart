import 'package:flutter/material.dart';
import 'package:flutter_app/config/app_routes.dart';
import 'package:flutter_app/models/user.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userData = User(name: 'Alejo', age: 33);
    return Scaffold(
      appBar: AppBar(
        title: const Text('New page'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Hola todo bien'),
          onPressed: () => Navigator.of(context)
              .pushReplacementNamed(AppRoutes.otherPage, arguments: userData),
        ),
      ),
    );
  }
}
