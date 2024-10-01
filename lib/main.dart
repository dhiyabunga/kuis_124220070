import 'package:flutter/material.dart';
import 'Pages/login.dart';

void main() {
  runApp(const Kuis());
}

class Kuis extends StatelessWidget {
  const Kuis({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
