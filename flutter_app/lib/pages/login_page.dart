import 'package:flutter/material.dart';
import 'package:flutter_app/design/copys.dart';

class LogInOPage extends StatefulWidget {
  const LogInOPage({super.key});

  @override
  State<LogInOPage> createState() => _LogInOPageState();
}

class _LogInOPageState extends State<LogInOPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 100),
          child: Column(
            children: [
              Text(
                AppCopys.hello,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 21, 16, 59),
                child: Text(
                  AppCopys.lorem,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
