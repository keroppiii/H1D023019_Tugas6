import 'package:flutter/material.dart';
import 'ui/form_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'H1D023019 - Tugas 6',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FormDataPage(),
    );
  }
}
