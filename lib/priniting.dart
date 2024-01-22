import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

Future<pw.Document> resume(doc) async {
  final bg = await loadNetworkImage('assets/bg.jpg');
  doc.addPage(pw.Page(build: (pw.Context context) {
    return pw.Column(
      children: [
        pw.Container(
          height: 180,
          color: const PdfColor.fromInt(0xff11111),
          child: pw.Stack(
            overflow: pw.Overflow.clip,
            children: [
              pw.Container(
                  height: 120,
                  child: pw.Image(pw.MemoryImage(bg!), fit: pw.BoxFit.cover)),
            ],
          ),
        ),
      ],
    );
  }));

  return doc;
}

Future<Uint8List?> loadNetworkImage(String path) async {
  final completer = Completer<ImageInfo>();
  var img = NetworkImage(path);
  img
      .resolve(const ImageConfiguration())
      .addListener(ImageStreamListener((info, _) => completer.complete(info)));
  final imageInfo = await completer.future;
  final byteData = await imageInfo.image
      .toByteData(format: ui.ImageByteFormat.png); //ui.ImageByteFormat.png
  return byteData?.buffer.asUint8List();
}
