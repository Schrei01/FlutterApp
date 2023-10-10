import 'package:flutter/material.dart';
import 'package:flutter_app/config/app_routes.dart';
import 'package:flutter_app/design/themes.dart';
import 'package:flutter_app/models/user.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/pages/login_page.dart';
import 'package:flutter_app/pages/new_page.dart';
import 'package:flutter_app/pages/other_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.defaultTheme,
      // routes: {
      //   AppRoutes.newPage: (context) => const NewPage(),
      //   AppRoutes.otherPage: (context) => const OtherPage(),
      //   AppRoutes.home: (context) => const HomePage(),
      // },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case AppRoutes.newPage:
            return MaterialPageRoute(builder: (context) => NewPage());

          case AppRoutes.otherPage:
            return MaterialPageRoute(
                builder: (context) =>
                    OtherPage(userData: settings.arguments as User));
          default:
            return MaterialPageRoute(builder: (context) => const LogInOPage());
        }
      },
    );
  }
}
