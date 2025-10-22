import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'home_screen.dart';

class ResultScreen extends StatefulWidget {
  final String ocrText;
  const ResultScreen({super.key, required this.ocrText});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  late FlutterTts flutterTts;

  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    _initTts();
  }

  Future<void> _initTts() async {
    await flutterTts.setLanguage("id-ID"); // Set to Indonesian
    await flutterTts.setSpeechRate(0.5); // Adjust speech rate as needed
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  Future<void> _speakText() async {
    if (widget.ocrText.isNotEmpty) {
      await flutterTts.speak(widget.ocrText);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hasil OCR')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
            widget.ocrText,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "home",
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => const HomeScreen()),
                (route) => false,
              );
            },
            child: const Icon(Icons.home),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            heroTag: "tts",
            onPressed: _speakText,
            child: const Icon(Icons.volume_up),
          ),
        ],
      ),
    );
  }
}
