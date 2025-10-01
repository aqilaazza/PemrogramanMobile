import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Title Section
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red[500]),
          const Text('41'),
        ],
      ),
    );

    // Button Section (pakai helper)
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
    padding: const EdgeInsets.all(32),
    child: const Text(
    'Gunung Batu Jonggol adalah salah satu wisata alam di Kabupaten Bogor, '
    'Jawa Barat, dengan ketinggian sekitar 875 mdpl. Gunung ini terkenal sebagai '
    'tempat pendakian singkat yang cocok untuk pemula. '
    'Dari puncaknya, pengunjung dapat menikmati panorama perbukitan hijau, '
    'desa-desa, serta pemandangan Gunung Gede Pangrango dan Gunung Salak di kejauhan. '
    'Waktu terbaik untuk mendaki adalah pagi atau sore hari agar dapat menyaksikan '
    'sunrise maupun sunset yang indah. '
    '\n\nNama : Aqila Nur Azza '
    '\nNIM  : 2341760022 ',
    softWrap: true,
    ),
  );

    return MaterialApp(
      title: 'Flutter layout: Aqila Nur Azza (2341760022)',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            titleSection,
            buttonSection,
            textSection, // ini ditambahkan biar muncul teksnya
          ],
        ),
      ),
    );
  }


  // HELPER METHOD ditaruh di sini
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
