import 'package:flutter/material.dart';
import 'package:flutter_app/design/themes.dart';
import 'package:flutter_app/pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: AppThemes.defaultTheme, home: const HomePage());
  }
}
