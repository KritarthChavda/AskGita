import 'dart:async';
import 'package:ask_gita/screens/home_screen.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const HomePage(title: 'xx')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 197, 174, 124),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 250,
              width: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(25.0),
              //child: Image.asset(
              //'lib/images/bhagavad_gita.png',
              //height: 240,
              //),
            ),
            const Text(
              'Ask Gita',
              style: TextStyle(
                color: Color.fromARGB(255, 1, 1, 1),
                fontWeight: FontWeight.bold,
                fontSize: 41,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 25, bottom: 20, right: 20, top: 10),
              child: Text(
                '"The mind is everything. What you think, you become"',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset(
                'lib/images/om.png',
                height: 81,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
