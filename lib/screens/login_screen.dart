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
    TextEditingController txtConPass = TextEditingController();

    final txtUser = TextField(
      decoration: const InputDecoration(border: OutlineInputBorder()),
      controller: txtConUser,
    );

    final txtPass = TextField(
      decoration: const InputDecoration(border: OutlineInputBorder()),
      controller: txtConPass,
      obscureText: true,
    );

    final imgLogo = Container(
      width: 300,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'http://2.bp.blogspot.com/-qVFkYqU-xJ8/TahMxxxxy9I/AAAAAAAAAB0/JRCcPDScQww/s1600/97-remeras-homero-simpson-350.jpg')),
      ),
    );

    final btnEntrar = FloatingActionButton.extended(
        icon: const Icon(Icons.login),
        label: const Text('Send'),
        onPressed: () {
          Navigator.pushNamed(context, '/dash');
        });

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              opacity: .9,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://3.bp.blogspot.com/-mzvJajghb3I/VsLT1mLAm6I/AAAAAAAAB0w/ABTEMT8oCoA/s1600/fondos%2Bde%2Bpantalla%2Bhd%2B.jpg')),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 100.0),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 200,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 151, 26, 26)),
                //color: Colors.blueGrey,
                child: Column(
                    children: [txtUser, const SizedBox(height: 10), txtPass]),
              ),
              Container(
                  padding: const EdgeInsets.only(bottom: 200), child: imgLogo)
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: btnEntrar,
    );
  }
}
