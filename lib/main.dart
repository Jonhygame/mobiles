import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:segunda_aplicacion/assets/styles_app.dart';
import 'package:segunda_aplicacion/screens/login_screen.dart';
import 'package:segunda_aplicacion/routes.dart';
=======
import 'package:segunda_aplicacion/screens/login_screen.dart';
>>>>>>> 9eb9b03 (Primer commit)

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp(
        home: const LoginScreen(),
        routes: getRoutes(),
        theme: StylesApp.darkTheme(context));
=======
    return MaterialApp(home: LoginScreen());
>>>>>>> 9eb9b03 (Primer commit)
  }
}
