// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({super.key});

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  late double _userBMI = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Height",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.5,
                letterSpacing: 1.5,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 12.5),
            Text(
              "${_userBMI.round()}CM",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20.5,
                letterSpacing: 1.5,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 12.5),
            Slider(
              min: 0.0,
              max: 700.0,
              value: _userBMI,
              thumbColor: Colors.white,
              activeColor: Colors.black,
              onChanged: (bmiValue) {
                setState(() {
                  _userBMI = bmiValue;
                });
              },
            ),
            const SizedBox(height: 25.5),
            ElevatedButton(
              onPressed: () {},
              child: const Text("CALCULATE YOUR BMI"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Theme.of(context).primaryColor,
                minimumSize: const Size(300, 45.5),
                shape: const BeveledRectangleBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
