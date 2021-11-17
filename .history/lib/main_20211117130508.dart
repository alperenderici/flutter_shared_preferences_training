import 'package:flutter/material.dart';
import 'package:flutter_shared_preferences_training/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared Preferences Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Shared Preferences Demo')),
        ),
        body: const HomePage(),
      ),
    );
  }
}
