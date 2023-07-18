
import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/back_button_icon.dart';
import 'package:flutter_resume_builder_app/utils/theme_utils.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class resume_secend_page extends StatefulWidget {
  const resume_secend_page({Key? key}) : super(key: key);

  @override
  State<resume_secend_page> createState() => _resume_secend_pageState();
}

class _resume_secend_pageState extends State<resume_secend_page> {
  pw.Document pdf = pw.Document();

  generatePdf() async {
    pdf.addPage(
      pw.Page(
        margin: pw.EdgeInsets.zero,
        build: (pw.Context context) => pw.Container(
          height: double.infinity,
          width: double.infinity,
          alignment: pw.Alignment.center,
          decoration: const pw.BoxDecoration(
            color: PdfColors.white,
          ),
          child: pw.Column(
            children: [
              pw.Column(
                children: [
                  pw.Stack(
                    children: [
                      pw.Stack(
                        children: [
                          pw.Column(
                            children: [
                              pw.SizedBox(height: 50),
                              pw.Container(
                                width: double.infinity,
                                height: 180,
                                color: PdfColors.purple200,
                              ),
                            ],
                          ),
                        ],
                      ),
                      pw.Row(
                        children: [
                          pw.SizedBox(width: 50),
                          pw.Container(
                            width: 180,
                            height: 841,
                            decoration: const pw.BoxDecoration(
                              color: PdfColors.purple200,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    generatePdf();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const backbutton(),
        backgroundColor: Colors.red,
        title: Text(
          "Pdf Page",
          style: AppBarTitile,
        ),
        centerTitle: true,
      ),
      body: PdfPreview(
        build: (format) => pdf.save(),
      ),
    );
  }
}