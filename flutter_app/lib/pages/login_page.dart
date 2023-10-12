import 'package:flutter/material.dart';
import 'package:flutter_app/config/app_routes.dart';
import 'package:flutter_app/design/color.dart';
import 'package:flutter_app/design/copys.dart';
import 'package:flutter_app/design/radius.dart';

class LogInOPage extends StatefulWidget {
  const LogInOPage({super.key});

  @override
  State<LogInOPage> createState() => _LogInOPageState();
}

class _LogInOPageState extends State<LogInOPage> {
  final _formLoginKey = GlobalKey<FormState>();
  late String userName;
  final defaultInputBorder = InputBorder.none;
  final defaultInputLabelTheme = const TextStyle(
      fontSize: 13,
      color: AppColors.brandLigthDarkColor,
      fontWeight: FontWeight.normal);
  final defaultContainerInputDecoration = const BoxDecoration(
      color: AppColors.brandSecondaryColor,
      borderRadius: BorderRadius.all(AppRadius.small));
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
              ),
              Form(
                  key: _formLoginKey,
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        padding: const EdgeInsets.only(left: 24),
                        decoration: defaultContainerInputDecoration,
                        child: TextFormField(
                          style: Theme.of(context).textTheme.labelSmall,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor ingresar un usuario';
                            }
                            if (value.length >= 7) {
                              return 'Por favor ingresar un usuario válido';
                            }
                            userName = value;
                            return null;
                          },
                          decoration: InputDecoration(
                              border: defaultInputBorder,
                              label: Text('User Name',
                                  style: defaultInputLabelTheme)),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 24),
                        decoration: defaultContainerInputDecoration,
                        child: TextFormField(
                          style: Theme.of(context).textTheme.labelSmall,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor ingresar un usuario';
                            }
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                              border: defaultInputBorder,
                              label: Text('Password',
                                  style: defaultInputLabelTheme),
                              hintText: 'Recuerda ingresar el usuario'),
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            if (_formLoginKey.currentState!.validate()) {
                              print('Todos los campos están OK');
                              Navigator.of(context).pushReplacementNamed(
                                  AppRoutes.home,
                                  arguments: userName);
                            }
                          },
                          child: Text('Subir formulario'))
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
