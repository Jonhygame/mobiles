import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController txtConUser = TextEditingController();
    final txtUser = TextField(
      controller: txtConUser,
    );

    TextEditingController txtConPass = TextEditingController();
    final txtPass = SizedBox(
      width: 200,
      height: 200,
      child: Center(
        child: TextField(
          controller: txtConPass,
        ),
      ),
    );

    final imgFondo = Opacity(
      opacity: .4,
      child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://todoimagenesde.com/wp-content/uploads/2018/10/FondosPantalla41.jpg')))),
    );

    return Scaffold(
      body: Stack(
        children: [imgFondo, txtUser, txtPass],
      ),
    );
  }
}
