import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget buatKotak(Color warna, double ukuran, String nama) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(color: warna),
          height: ukuran,
          width: ukuran,
          margin: const EdgeInsets.all(10),
        ),
        Text(nama),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Wrap(
            children: [
              buatKotak(Colors.greenAccent, 100, "Fira Andiani"),
              buatKotak(Colors.orange, 70, "Fira"),
              buatKotak(Colors.greenAccent, 50, "Andiani"),
              buatKotak(Colors.orange, 90, "Andiani Fira"),
              buatKotak(Colors.red, 110, "Andiani"),
              buatKotak(Colors.blue, 30, "Fira"),
            ],
          ),
        ),
      ),
    );
  }
}