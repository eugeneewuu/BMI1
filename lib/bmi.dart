// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/rendering.dart';
import 'bmi_result.dart';

class InputBMI extends StatefulWidget {
  const InputBMI({Key? key}) : super(key: key);

  @override
  _InputBMIState createState() => _InputBMIState();
}

class _InputBMIState extends State<InputBMI> {
  final name = TextEditingController();
  final jenis = TextEditingController();
  final umur = TextEditingController();
  int tinggi = 0;
  int berat = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[50],

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // ignore: avoid_unnecessary_containers
            Container(
              child: Image.asset(
                'images/bmi.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              //memberikan identitas untuk setiap form
              controller: name,
              decoration: InputDecoration(
                  hintText: "Ketik nama lengkap anda",
                  labelText: "Nama Lengkap",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0))),
              //memberikan validasi jika form kosong
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Nama tidak boleh kosong';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: jenis,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                  labelText: 'Jenis kelamin',
                  hintText: 'Masukan jenis kelamin anda',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0))),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'jenis kelamin tidak boleh kosong';
                }
                return null;
              },
            ),
            TextFormField(
              controller: umur,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                  labelText: 'Umur',
                  hintText: 'Masukan Umur Anda',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0))),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Umur tidak boleh kosong';
                }
                return null;
              },
            ),
            Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(10),
                // color: Colors.blue[700],
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            tinggi = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                        decoration: const InputDecoration(
                            suffix: Text('cm'),
                            filled: true,
                            hintText: 'Tinggi'),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            berat = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                        decoration: const InputDecoration(
                            suffix: Text('kg'),
                            filled: true,
                            hintText: 'Berat'),
                      ),
                    ),
                  ],
                )),
            Container(
              //height: double.infinity,
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BMIResult(
                            name: name.text,
                            jenis: jenis.text,
                            umur : umur.text,
                            tinggi_badan: tinggi,
                            berat_badan: berat)),
                  );
                },
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                color: const Color.fromARGB(255, 255, 128, 44),
                // textColor: Colors.white,
                child: const Text(
                  'HITUNG BMI',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}