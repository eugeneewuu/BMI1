// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'dart:math';

// ignore: must_be_immutable
class BMIResult extends StatelessWidget {
  // ignore: non_constant_identifier_names, use_key_in_widget_constructors
  const BMIResult(
      {required this.name,
        required this.jenis,
        required this.umur,
        // ignore: non_constant_identifier_names
        required this.tinggi_badan,
        // ignore: non_constant_identifier_names
        required this.berat_badan});
  final String name;
  final String jenis;
  // ignore: non_constant_identifier_names
  final String umur;
  final int tinggi_badan;
  // ignore: non_constant_identifier_names
  final int berat_badan;

  @override
  Widget build(BuildContext context) {
    double bmi = berat_badan / pow(tinggi_badan / 100, 2);
    String cBMI;
    if (bmi >= 28) {
      cBMI = "Obese";
    } else if (bmi >= 23) {
      cBMI = "Overweight";
    } else if (bmi >= 17.5) {
      cBMI = "Normal";
    } else {
      cBMI = "Underweight";
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('RESULT'),
        backgroundColor: const Color.fromARGB(255, 255, 232, 128),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              jenis,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              umur,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              cBMI,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.green,
              ),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: const TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w800,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            const Text(
              'Normal BMI Range',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Color.fromARGB(153, 0, 0, 0),
              ),
            ),
            const Text(
              '17,5 -  22.9 ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: SizedBox(
        width: double.infinity,
        height: 80,
        child: RaisedButton(
          color: Colors.black54,
          child: const Text(
            'BACK',
            style: TextStyle(fontSize: 30),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}