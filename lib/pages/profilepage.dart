import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 178, 212, 240),
      body: Center(
        child: Text("this is profile page"),
      ),
    );
  }
}