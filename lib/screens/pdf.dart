import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PDFScreen extends StatelessWidget {
  const PDFScreen({required this.path, required this.title, super.key});
  final String path;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(title, style: const TextStyle(color: Colors.white)),
      ),
      body: PDFView(
        filePath: path,
        autoSpacing: false,
        enableSwipe: true,
        pageSnap: true,
        //swipeHorizontal: true,
        nightMode: false,
      ),
    );
  }
}
