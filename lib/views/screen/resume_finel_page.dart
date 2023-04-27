import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/back_button_icon.dart';
import 'package:flutter_resume_builder_app/utils/theme_utils.dart';
import 'package:pdf/pdf.dart';
import 'package:flutter_resume_builder_app/views/modals/modals_varibles.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class resume_finel_page extends StatefulWidget {
  const resume_finel_page({Key? key}) : super(key: key);

  @override
  State<resume_finel_page> createState() => _resume_finel_pageState();
}

class _resume_finel_pageState extends State<resume_finel_page> {
  pw.Document pdf = pw.Document();

  generatePdf() async {
    // Size s = MediaQuery.of(context).size ;
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
          child: pw.Row(
            children: [
              pw.SizedBox(width: 20),
              pw.Expanded(
                flex: 1,
                child: pw.Stack(
                  children: [
                    pw.Expanded(
                      flex: 1,
                      child: pw.Row(
                        children: [
                          pw.Container(
                            width: 220,
                            height: double.infinity,
                            color: PdfColors.black,
                            alignment: pw.Alignment.topCenter,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.all(20),
                              child: pw.Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: const pw.BoxDecoration(
                                  color: PdfColors.amber,
                                ),
                                child: pw.Column(
                                  crossAxisAlignment:
                                      pw.CrossAxisAlignment.start,
                                  mainAxisAlignment: pw.MainAxisAlignment.start,
                                  children: [
                                    pw.Container(
                                      width: double.infinity,
                                      child: pw.Column(
                                        mainAxisAlignment:
                                            pw.MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            pw.CrossAxisAlignment.center,
                                        mainAxisSize: pw.MainAxisSize.min,
                                        children: [
                                          pw.SizedBox(height: 215),
                                          // personal info
                                          pw.Container(
                                            height: 40,
                                            width: 175,
                                            decoration: const pw.BoxDecoration(
                                              borderRadius:
                                                  pw.BorderRadius.vertical(
                                                bottom: pw.Radius.circular(15),
                                                top: pw.Radius.elliptical(
                                                    10, 45),
                                              ),
                                              color: PdfColors.black,
                                            ),
                                            alignment: pw.Alignment.center,
                                            child: pw.Text(
                                              "Personal Info",
                                              style: pw.TextStyle(
                                                  color: PdfColors.amber,
                                                  fontSize: 20,
                                                  fontWeight:
                                                      pw.FontWeight.bold),
                                            ),
                                          ),
                                          // name
                                          pw.Text(
                                            "\n Name : ${allGlobalvar.name}",
                                            style: const pw.TextStyle(
                                              color: PdfColors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                          // e-mail
                                          pw.Text(
                                            " E-Mail : ${allGlobalvar.email}",
                                            style: const pw.TextStyle(
                                              color: PdfColors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                          // contact
                                          pw.Text(
                                            " Contact : ${allGlobalvar.contact}",
                                            style: const pw.TextStyle(
                                              color: PdfColors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                          // address
                                          pw.Text(
                                            " Address : ${allGlobalvar.ad1}",
                                            style: const pw.TextStyle(
                                              color: PdfColors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                          pw.SizedBox(height: 20),
                                          // personal Details
                                          pw.Container(
                                            height: 40,
                                            width: 175,
                                            decoration: const pw.BoxDecoration(
                                              borderRadius:
                                                  pw.BorderRadius.vertical(
                                                bottom: pw.Radius.circular(15),
                                                top: pw.Radius.elliptical(
                                                    10, 45),
                                              ),
                                              color: PdfColors.black,
                                            ),
                                            alignment: pw.Alignment.center,
                                            child: pw.Text(
                                              "Personal Details",
                                              style: pw.TextStyle(
                                                color: PdfColors.amber,
                                                fontSize: 20,
                                                fontWeight: pw.FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          // DOB
                                          pw.Text(
                                            "\n DOB : ${allGlobalvar.dob}",
                                            style: const pw.TextStyle(
                                              color: PdfColors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                          // Merital
                                          pw.Text(
                                            " Marital : ${allGlobalvar.Merital}",
                                            style: const pw.TextStyle(
                                              color: PdfColors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                          // Languages
                                          pw.Text(
                                            " Languages : ${allGlobalvar.allLanguages.toSet()}",
                                            style: const pw.TextStyle(
                                              color: PdfColors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                          // Nationality
                                          pw.Text(
                                            " Nationality : ${allGlobalvar.nationality}",
                                            style: const pw.TextStyle(
                                              color: PdfColors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                          pw.SizedBox(height: 20),
                                          // Education Details
                                          pw.Container(
                                            height: 40,
                                            width: 175,
                                            decoration: const pw.BoxDecoration(
                                              color: PdfColors.black,
                                              borderRadius:
                                                  pw.BorderRadius.vertical(
                                                bottom: pw.Radius.circular(15),
                                                top: pw.Radius.elliptical(
                                                    10, 45),
                                              ),
                                            ),
                                            alignment: pw.Alignment.center,
                                            child: pw.Text(
                                              "Education Details",
                                              style: pw.TextStyle(
                                                color: PdfColors.amber,
                                                fontSize: 20,
                                                fontWeight: pw.FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          pw.SizedBox(height: 20),
                                          // Course / Degree
                                          pw.Text(
                                            " Course : ${allGlobalvar.Edcoursordegree}",
                                            style: const pw.TextStyle(
                                              color: PdfColors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                          // school/college/institute
                                          pw.Text(
                                            " College Name : ${allGlobalvar.Edsci1}",
                                            style: const pw.TextStyle(
                                              color: PdfColors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                          // school/college/institute CGPA
                                          pw.Text(
                                            " College CGPA : ${allGlobalvar.Edsci2}",
                                            style: const pw.TextStyle(
                                              color: PdfColors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                          // Year of Pass
                                          pw.Text(
                                            " Passing Year : ${allGlobalvar.Edpasstime}",
                                            style: const pw.TextStyle(
                                              color: PdfColors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                          pw.SizedBox(height: 20),
                                          // Declaration
                                          pw.Container(
                                            height: 40,
                                            width: 175,
                                            decoration: const pw.BoxDecoration(
                                              color: PdfColors.black,
                                              borderRadius:
                                                  pw.BorderRadius.vertical(
                                                bottom: pw.Radius.circular(15),
                                                top: pw.Radius.elliptical(
                                                    10, 45),
                                              ),
                                            ),
                                            alignment: pw.Alignment.center,
                                            child: pw.Text(
                                              "Declaration",
                                              style: pw.TextStyle(
                                                  color: PdfColors.amber,
                                                  fontSize: 20,
                                                  fontWeight:
                                                      pw.FontWeight.bold),
                                            ),
                                          ),
                                          pw.SizedBox(height: 20),
                                          pw.Text(
                                            " Descripation : ${allGlobalvar.DedeclarationDescripation}",
                                            style: const pw.TextStyle(
                                              color: PdfColors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                          pw.Text(
                                            " Date : ${allGlobalvar.Dedateofdeclartion}",
                                            style: const pw.TextStyle(
                                              color: PdfColors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                          pw.Text(
                                            " Place : ${allGlobalvar.Deplacedeclaration}",
                                            style: const pw.TextStyle(
                                              color: PdfColors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(width: 20),
                    pw.Expanded(
                      flex: 2,
                      child: pw.Row(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Container(
                            height: 50,
                            width: 200,
                            color: PdfColors.black,
                          ),
                          pw.SizedBox(width: 20),
                          pw.Container(
                            width: 380,
                            height: double.infinity,
                            color: PdfColors.white,
                            child: pw.Stack(
                              children: [
                                pw.Column(
                                  mainAxisAlignment: pw.MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.SizedBox(height: 20),
                                    pw.Container(
                                      width: 300,
                                      height: 60,
                                      decoration: const pw.BoxDecoration(
                                        color: PdfColors.black,
                                        borderRadius: pw.BorderRadius.only(
                                          bottomRight: pw.Radius.circular(0),
                                          topRight: pw.Radius.circular(50),
                                        ),
                                      ),
                                      alignment: pw.Alignment.centerLeft,
                                      child: pw.Text(
                                        "   Carrier Objective",
                                        style: pw.TextStyle(
                                          color: PdfColors.amber,
                                          fontSize: 20,
                                          fontWeight: pw.FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    pw.SizedBox(width: 10),
                                    pw.Container(
                                      width: 280,
                                      child: pw.Stack(
                                        children: [
                                          pw.Column(
                                            mainAxisAlignment: pw.MainAxisAlignment.start,
                                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                                            children: [
                                              pw.Text("\n${allGlobalvar.CareerobjectveDescripation}",style: const pw.TextStyle(
                                                color: PdfColors.black,fontSize: 18,
                                              ),),
                                              pw.Text("\nDesignation : ${allGlobalvar.carrierexperirncedcandidate}",style: const pw.TextStyle(
                                                color: PdfColors.black,fontSize: 18,
                                              ),),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.Container(
                      margin: pw.EdgeInsets.all(10),
                      height: 200,
                      width: 200,
                      decoration: pw.BoxDecoration(
                        border: pw.Border.all(
                          color: PdfColors.black,
                          width: 20,
                        ),
                        color: PdfColors.amber,
                        shape: pw.BoxShape.circle,
                        image: pw.DecorationImage(
                          image: pw.MemoryImage(
                            File(allGlobalvar.image!.path).readAsBytesSync(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
