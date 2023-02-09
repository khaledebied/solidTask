import 'package:flutter/material.dart';
import 'package:testtask/task/task_imports.dart';

/// class MyApp used start My app witch contain Material app,
/// This widget is the root of your application
class MyApp extends StatelessWidget {
  /// MyApp Constructor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test Task',
      home: Splash(),
    );
  }
}
