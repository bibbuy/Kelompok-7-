import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'ABYA NUSALIA WAANGSIR',
                  style: TextStyle(
                    fontSize: 30,
                    color: const Color.fromARGB(255, 183, 58, 102),
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      color: Colors.amber,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Nomor Absen: 03',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.italic,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    Column(
                      children: [
                        const Text('Nested 1'),
                        const Text('Nested 2'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}