import 'package:flutter/material.dart';

import '/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

const Color bgcolor = Colors.white;
const Color seconderyColor = Color.fromARGB(255, 221, 221, 221);

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
