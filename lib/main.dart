import 'package:currency_converter/material_home.dart';
import 'package:currency_converter/cupertino_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Mca());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CcMp());
  }
}

class Mca extends StatelessWidget {
  const Mca({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(home: CcCp());
  }
}
