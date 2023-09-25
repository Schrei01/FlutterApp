import 'package:flutter/material.dart';
import 'package:flutter_app/design/color.dart';
import 'package:flutter_app/design/radius.dart';
import 'package:flutter_app/widgets/home_app_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 97,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: AppRadius.small, bottomRight: AppRadius.small)),
        backgroundColor: AppColors.brandLightColor,
        title: const Padding(
            padding: EdgeInsets.fromLTRB(16, 45, 16, 12),
            child: HomeAppBarTitle()),
      ),
      body: const Center(
          child: Text(
        '''Primera pantalla''',
        style: TextStyle(fontSize: 34),
      )),
    );
  }
}
