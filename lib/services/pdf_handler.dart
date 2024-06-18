import "package:flutter/material.dart";
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:umn_fellowship_app/screens/pdf.dart';

Future<void> openPDF(
    BuildContext context, String fileName, String title) async {
  String path = (await getApplicationDocumentsDirectory()).path;
  String assetPath = 'assets/pdfs/$fileName';
  String filePath = '$path/$fileName';

  if (!File(filePath).existsSync()) {
    ByteData data = await rootBundle.load(assetPath);
    List<int> bytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    await File(filePath).writeAsBytes(bytes);
  }
  if (!context.mounted) {
    return;
  } else {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PDFScreen(path: filePath, title: title)));
  }
}
