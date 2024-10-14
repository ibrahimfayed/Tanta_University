import 'package:flutter/material.dart';
import 'package:graduated_project/screens/login_page.dart';

void main() {
  runApp(const Tanta_University());
}


class Tanta_University extends StatelessWidget {
  const Tanta_University({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}