// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';

import 'MyHomePage.dart';

//Splash Screen
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        margin: const EdgeInsets.all(5),
        height: 100,
        width: 100,
        child: const CircularProgressIndicator(),
      ),
      Container(
          child: const Text('Splash Screen',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)))
    ])));
  }

  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  void navigateToHome() async {
    await Future.delayed(const Duration(seconds: 2));
    /* Navigator.pushReplacementNamed(context, '/home');*/
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => const MyHomePage(
                  title: 'Home',
                )));
  } // This method is rerun every time setState is called, for instance as done
}
