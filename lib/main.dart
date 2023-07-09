import 'package:bmi/screen/bmi_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterBMIApp());
}

class FlutterBMIApp extends StatelessWidget {
  const FlutterBMIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const BMIScreen(),
    );
  }
}
