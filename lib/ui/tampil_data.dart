import 'package:flutter/material.dart';

class TampilDataPage extends StatelessWidget {
  final String name;
  final String nim;
  final String tahun;

  const TampilDataPage({
    Key? key,
    required this.name,
    required this.nim,
    required this.tahun,
  }) : super(key: key);

  int hitungUmur(String tahunLahir) {
    try {
      int tahunInt = int.parse(tahunLahir);
      int tahunSekarang = DateTime.now().year;
      return tahunSekarang - tahunInt;
    } catch (e) {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    final int umur = hitungUmur(tahun);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Perkenalan'),
        backgroundColor: const Color(0xFF7E57C2), // ungu tua
        elevation: 4,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFF3E5F5), Color(0xFFD1C4E9)], // gradasi ungu lembut
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Card(
            elevation: 10,
            margin: const EdgeInsets.all(24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Perkenalan Diri',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF7E57C2),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Halo! Nama saya $name, dengan NIM $nim, dan umur saya adalah $umur tahun.',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton.icon(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    label: const Text('Kembali ke Form', style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF7E57C2),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
