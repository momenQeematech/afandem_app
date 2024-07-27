import 'package:flutter/material.dart';

class AfandemApp extends StatelessWidget {
  const AfandemApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: const Center(
          child: Text('Afandem App'),
        ),
      ),
    );
  }
}
