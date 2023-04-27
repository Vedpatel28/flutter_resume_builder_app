// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:flutter_resume_builder_app/utils/back_button_icon.dart';
// import 'package:flutter_resume_builder_app/utils/theme_utils.dart';
// import 'package:flutter_resume_builder_app/views/modals/modals_varibles.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
// import 'package:printing/printing.dart';
//
// // ignore: camel_case_types
// class resume_finel_page extends StatefulWidget {
//   const resume_finel_page({Key? key}) : super(key: key);
//
//   @override
//   State<resume_finel_page> createState() => _resume_finel_pageState();
// }
//
// // ignore: camel_case_types
// class _resume_finel_pageState extends State<resume_finel_page> {
//   pw.Document pdf = pw.Document();
//
//   generatePdf() async {
//     Size s = MediaQuery.of(context).size;
//     pdf.addPage(
//       pw.Page(
//         margin: pw.EdgeInsets.zero,
//         build: (pw.Context context) => pw.Padding(
//           padding: const pw.EdgeInsets.all(10),
//           child: pw.Row(
//             mainAxisAlignment: pw.MainAxisAlignment.start,
//             // children: [
//             //   pw.Container(
//             //     width: s.width * 0.7,
//             //     height: s.height * 0.97,
//             //     color: PdfColors.black,
//             //     alignment: pw.Alignment.topCenter,
//             //     child: pw.Padding(
//             //       padding: const pw.EdgeInsets.all(10),
//             //       child: pw.Column(
//             //         crossAxisAlignment: pw.CrossAxisAlignment.start,
//             //         children: [
//             //           pw.Container(
//             //             width: s.width,
//             //             color: PdfColors.black,
//             //             child: pw.Column(
//             //               mainAxisSize: pw.MainAxisSize.min,
//             //               // children: [
//             //               //   pw.Container(
//             //               //     height: 250,
//             //               //     width: 250,
//             //               //     decoration: pw.BoxDecoration(
//             //               //       shape: pw.BoxShape.circle,
//             //               //       image: pw.DecorationImage(
//             //               //         image: pw.MemoryImage(
//             //               //           File(allGlobalvar.image!.path)
//             //               //               .readAsBytesSync(),
//             //               //         ),
//             //               //       ),
//             //               //     ),
//             //               //   ),
//             //               //   pw.SizedBox(height: s.height * 0.01),
//             //               //   // personal info
//             //               //   pw.Container(
//             //               //     height: s.height * 0.05,
//             //               //     width: s.width,
//             //               //     decoration: const pw.BoxDecoration(
//             //               //       borderRadius: pw.BorderRadius.vertical(
//             //               //         bottom: pw.Radius.circular(20),
//             //               //         top: pw.Radius.elliptical(15, 50),
//             //               //       ),
//             //               //       color: PdfColors.amber,
//             //               //     ),
//             //               //     alignment: pw.Alignment.center,
//             //               //     child: pw.Text(
//             //               //       "Personal Info",
//             //               //       style: pw.TextStyle(
//             //               //           color: PdfColors.black,
//             //               //           fontSize: 20,
//             //               //           fontWeight: pw.FontWeight.bold),
//             //               //     ),
//             //               //   ),
//             //               //   // name
//             //               //   pw.Text(
//             //               //     "\n Name     : ${allGlobalvar.name}",
//             //               //   ),
//             //               //   // e-mail
//             //               //   pw.Text(
//             //               //     " E-Mail    : ${allGlobalvar.email}",
//             //               //   ),
//             //               //   // contact
//             //               //   pw.Text(
//             //               //     " Contact  : ${allGlobalvar.contact}",
//             //               //   ),
//             //               //   // address
//             //               //   pw.Text(
//             //               //     " Address : ${allGlobalvar.ad1}",
//             //               //   ),
//             //               //   pw.SizedBox(height: s.height * 0.02),
//             //               //   // personal Details
//             //               //   pw.Container(
//             //               //     height: s.height * 0.05,
//             //               //     width: s.width,
//             //               //     decoration: const pw.BoxDecoration(
//             //               //       borderRadius: pw.BorderRadius.vertical(
//             //               //         bottom: pw.Radius.circular(20),
//             //               //         top: pw.Radius.elliptical(15, 50),
//             //               //       ),
//             //               //       color: PdfColors.amber,
//             //               //     ),
//             //               //     alignment: pw.Alignment.center,
//             //               //     child: pw.Text(
//             //               //       "Personal Details",
//             //               //       style: pw.TextStyle(
//             //               //         color: PdfColors.black,
//             //               //         fontSize: 20,
//             //               //         fontWeight: pw.FontWeight.bold,),
//             //               //     ),
//             //               //   ),
//             //               //   // DOB
//             //               //   pw.Text(
//             //               //     "\n DOB              : ${allGlobalvar.dob}",
//             //               //   ),
//             //               //   // Merital
//             //               //   pw.Text(
//             //               //     " Marital         : ${allGlobalvar.Merital}",
//             //               //   ),
//             //               //   // Languages
//             //               //   pw.Text(
//             //               //     " Languages  : ${allGlobalvar.Languages}",
//             //               //   ),
//             //               //   // Nationality
//             //               //   pw.Text(
//             //               //     " Nationality  : ${allGlobalvar.nationality}",
//             //               //   ),
//             //               //   pw.SizedBox(height: s.height * 0.02),
//             //               //   // Education Details
//             //               //   pw.Container(
//             //               //     height: s.height * 0.05,
//             //               //     width: s.width,
//             //               //     decoration: const pw.BoxDecoration(
//             //               //       borderRadius: pw.BorderRadius.vertical(
//             //               //         bottom: pw.Radius.circular(20),
//             //               //         top: pw.Radius.elliptical(15, 50),
//             //               //       ),
//             //               //     ),
//             //               //     alignment: pw.Alignment.center,
//             //               //     child: pw.Text(
//             //               //       "Education Details",
//             //               //       style: pw.TextStyle(
//             //               //           color: PdfColors.black,
//             //               //           fontSize: 20,
//             //               //           fontWeight: pw.FontWeight.bold),
//             //               //     ),
//             //               //   ),
//             //               //   pw.SizedBox(height: s.height * 0.02),
//             //               //   // Course / Degree
//             //               //   pw.Text(
//             //               //     " Course  : ${allGlobalvar.Edcoursordegree}",
//             //               //   ),
//             //               //   // school/college/institute
//             //               //   pw.Text(
//             //               //     " College Name  : ${allGlobalvar.Edsci1}",
//             //               //   ),
//             //               //   // school/college/institute CGPA
//             //               //   pw.Text(
//             //               //     " College CGPA  : ${allGlobalvar.Edsci2}",
//             //               //   ),
//             //               //   // Year of Pass
//             //               //   pw.Text(
//             //               //     " Passing Year : ${allGlobalvar.Edpasstime}",
//             //               //   ),
//             //               // ],
//             //             ),
//             //           ),
//             //         ],
//             //       ),
//             //     ),
//             //   ),
//             //   // . Side
//             //   pw.Column(
//             //     crossAxisAlignment: pw.CrossAxisAlignment.start,
//             //     mainAxisSize: pw.MainAxisSize.min,
//             //     // children: [
//             //     //   pw.Container(
//             //     //     width: s.width * 0.8,
//             //     //     height: s.height * 0.1,
//             //     //     decoration: const pw.BoxDecoration(
//             //     //       color: PdfColors.amber,
//             //     //       borderRadius: pw.BorderRadius.horizontal(
//             //     //         right: pw.Radius.circular(50),
//             //     //       ),
//             //     //     ),
//             //     //     child: pw.Column(
//             //     //       crossAxisAlignment: pw.CrossAxisAlignment.start,
//             //     //       mainAxisAlignment: pw.MainAxisAlignment.center,
//             //     //       children: [
//             //     //         pw.Text(
//             //     //           "   Pedro Fernandes",
//             //     //           style: pw.TextStyle(
//             //     //             fontWeight: pw.FontWeight.bold,
//             //     //             fontSize: s.height * 0.038,
//             //     //             color: PdfColors.black,
//             //     //           ),
//             //     //         ),
//             //     //         pw.Text(
//             //     //           "         Secrertary",
//             //     //           style: const pw.TextStyle(
//             //     //             color: PdfColors.black,
//             //     //             fontSize: 12,
//             //     //           ),
//             //     //         ),
//             //     //       ],
//             //     //     ),
//             //     //   ),
//             //     //   pw.SizedBox(height: s.height * 0.02),
//             //     //   // About Me
//             //     //   pw.Container(
//             //     //     width: s.width * 0.4,
//             //     //     height: s.height * 0.05,
//             //     //     decoration: const pw.BoxDecoration(
//             //     //       color: PdfColors.black,
//             //     //       borderRadius: pw.BorderRadius.horizontal(
//             //     //         left: pw.Radius.circular(60),
//             //     //       ),
//             //     //     ),
//             //     //     alignment: pw.Alignment.center,
//             //     //     // About Me
//             //     //     child: pw.Text(
//             //     //       "About Me",
//             //     //       style: pw.TextStyle(
//             //     //         color: PdfColors.amber,
//             //     //         fontSize: s.height * 0.03,
//             //     //         fontWeight: pw.FontWeight.bold,
//             //     //       ),
//             //     //     ),
//             //     //   ),
//             //     //   pw.SizedBox(height: s.height * 0.01),
//             //     //   pw.Row(
//             //     //     children: [
//             //     //       pw.SizedBox(width: s.width * 0.02),
//             //     //       pw.Container(
//             //     //         width: s.width * 0.8,
//             //     //         // color: Colors.black,
//             //     //         child: pw.Text(
//             //     //           "${allGlobalvar
//             //     //               .CareerobjectveDescripation} \n\n ${allGlobalvar
//             //     //               .carrierexperirncedcandidate}",
//             //     //           style: pw.TextStyle(
//             //     //             color: PdfColors.grey.complementary,
//             //     //             fontSize: s.height * 0.013,
//             //     //           ),
//             //     //         ),
//             //     //       ),
//             //     //     ],
//             //     //   ),
//             //     //   pw.SizedBox(height: s.height * 0.02),
//             //     //   // Experience
//             //     //   pw.Container(
//             //     //     width: s.width * 0.4,
//             //     //     height: s.height * 0.05,
//             //     //     decoration: const pw.BoxDecoration(
//             //     //       color: PdfColors.black,
//             //     //       borderRadius: pw.BorderRadius.horizontal(
//             //     //         left: pw.Radius.circular(60),
//             //     //       ),
//             //     //     ),
//             //     //     alignment: pw.Alignment.center,
//             //     //     // Experience
//             //     //     child: pw.Text(
//             //     //       "Experience",
//             //     //       style: pw.TextStyle(
//             //     //         color: PdfColors.amber,
//             //     //         fontSize: s.height * 0.03,
//             //     //         fontWeight: pw.FontWeight.bold,
//             //     //       ),
//             //     //     ),
//             //     //   ),
//             //     //   pw.SizedBox(height: s.height * 0.01),
//             //     //   // Company Name 2017-20
//             //     //   pw.Text(
//             //     //     "   Company Name 2017-20",
//             //     //     style: pw.TextStyle(
//             //     //       color: PdfColors.black,
//             //     //       fontWeight: pw.FontWeight.bold,
//             //     //       fontSize: s.height * 0.015,
//             //     //     ),
//             //     //   ),
//             //     //   // job Protion
//             //     //   pw.Text(
//             //     //     "    job Protion",
//             //     //     style: pw.TextStyle(
//             //     //       fontSize: s.height * 0.012,
//             //     //     ),
//             //     //   ),
//             //     //   pw.SizedBox(height: s.height * 0.02),
//             //     //   // Education
//             //     //   pw.Container(
//             //     //     width: s.width * 0.4,
//             //     //     height: s.height * 0.05,
//             //     //     decoration: const pw.BoxDecoration(
//             //     //       color: PdfColors.black,
//             //     //       borderRadius: pw.BorderRadius.horizontal(
//             //     //         left: pw.Radius.circular(60),
//             //     //       ),
//             //     //     ),
//             //     //     alignment: pw.Alignment.center,
//             //     //     child: pw.Text(
//             //     //       "Education",
//             //     //       style: pw.TextStyle(
//             //     //         color: PdfColors.amber,
//             //     //         fontSize: s.height * 0.03,
//             //     //         fontWeight: pw.FontWeight.bold,
//             //     //       ),
//             //     //     ),
//             //     //   ),
//             //     // ],
//             //   ),
//             // ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     // generatePdf();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: const backbutton(),
//         backgroundColor: Colors.red,
//         title: Text(
//           "Pdf Page",
//           style: AppBarTitile,
//         ),
//         centerTitle: true,
//       ),
//       body: PdfPreview(
//         build: (format) => pdf.save(),
//       ),
//     );
//   }
// }
//
// //
// // import 'package:flutter/material.dart';
// // import 'package:flutter_resume_builder_app/views/modals/modals_varibles.dart';
// //
// // class resume_finel_page extends StatefulWidget {
// //   const resume_finel_page({Key? key}) : super(key: key);
// //
// //   @override
// //   State<resume_finel_page> createState() => _resume_finel_pageState();
// // }
// //
// // class _resume_finel_pageState extends State<resume_finel_page> {
// //   int a = 2;
// //
// //   TextStyle allstyletext = const TextStyle(
// //     color: Colors.amberAccent,
// //     fontSize: 16,
// //     fontWeight: FontWeight.bold,
// //   );
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     Size s = MediaQuery.of(context).size;
// //     return Scaffold(
// //       body: SingleChildScrollView(
// //         scrollDirection: Axis.horizontal,
// //         child: Padding(
// //           padding: const EdgeInsets.all(10),
// //           child: Row(
// //             mainAxisAlignment: MainAxisAlignment.start,
// //             children: [
// //               Container(
// //                 width: s.width * 0.7,
// //                 height: s.height * 0.97,
// //                 color: Colors.black,
// //                 alignment: Alignment.topCenter,
// //                 child: Padding(
// //                   padding: const EdgeInsets.all(10),
// //                   child: Column(
// //                     crossAxisAlignment: CrossAxisAlignment.start,
// //                     children: [
// //                       Container(
// //                         width: s.width,
// //                         color: Colors.transparent,
// //                         child: CircleAvatar(
// //                           radius: s.height * 0.1,
// //                           foregroundImage: (allGlobalvar.image != null)
// //                               ? FileImage(allGlobalvar.image!)
// //                               : null,
// //                         ),
// //                       ),
// //                       SizedBox(height: s.height * 0.01),
// //                       // personal info
// //                       Container(
// //                         height: s.height * 0.05,
// //                         width: s.width,
// //                         decoration: const BoxDecoration(
// //                           borderRadius: BorderRadius.vertical(
// //                             bottom: Radius.circular(20),
// //                             top: Radius.elliptical(15, 50),
// //                           ),
// //                           color: Colors.amber,
// //                         ),
// //                         alignment: Alignment.center,
// //                         child: const Text(
// //                           "Personal Info",
// //                           style: TextStyle(
// //                               color: Colors.black,
// //                               fontSize: 20,
// //                               fontWeight: FontWeight.bold),
// //                         ),
// //                       ),
// //                       // name
// //                       Text(
// //                         "\n Name     : ${allGlobalvar.name}",
// //                         style: allstyletext,
// //                       ),
// //                       // e-mail
// //                       Text(
// //                         " E-Mail    : ${allGlobalvar.email}",
// //                         style: allstyletext,
// //                       ),
// //                       // contact
// //                       Text(
// //                         " Contact  : ${allGlobalvar.contact}",
// //                         style: allstyletext
// //                       ),
// //                       // address
// //                       Text(
// //                         " Address : ${allGlobalvar.ad1}",
// //                         style: allstyletext,
// //                       ),
// //                       SizedBox(height: s.height * 0.02),
// //                       // personal Details
// //                       Container(
// //                         height: s.height * 0.05,
// //                         width: s.width,
// //                         decoration: const BoxDecoration(
// //                           borderRadius: BorderRadius.vertical(
// //                             bottom: Radius.circular(20),
// //                             top: Radius.elliptical(15, 50),
// //                           ),
// //                           color: Colors.amber,
// //                         ),
// //                         alignment: Alignment.center,
// //                         child: const Text(
// //                           "Personal Details",
// //                           style: TextStyle(
// //                               color: Colors.black,
// //                               fontSize: 20,
// //                               fontWeight: FontWeight.bold,),
// //                         ),
// //                       ),
// //                       // DOB
// //                       Text(
// //                         "\n DOB              : ${allGlobalvar.dob}",
// //                         style: allstyletext,
// //                       ),
// //                       // Merital
// //                       Text(
// //                         " Marital         : ${allGlobalvar.Merital}",
// //                         style: allstyletext,
// //                       ),
// //                       // Languages
// //                       Text(
// //                         " Languages  : ${allGlobalvar.Languages}",
// //                         style: allstyletext,
// //                       ),
// //                       // Nationality
// //                       Text(
// //                         " Nationality  : ${allGlobalvar.nationality}",
// //                         style: allstyletext,
// //                       ),
// //                       SizedBox(height: s.height * 0.02),
// //                       // Education Details
// //                       Container(
// //                         height: s.height * 0.05,
// //                         width: s.width,
// //                         decoration: const BoxDecoration(
// //                           borderRadius: BorderRadius.vertical(
// //                             bottom: Radius.circular(20),
// //                             top: Radius.elliptical(15, 50),
// //                           ),
// //                           color: Colors.amber,
// //                         ),
// //                         alignment: Alignment.center,
// //                         child: const Text(
// //                           "Education Details",
// //                           style: TextStyle(
// //                               color: Colors.black,
// //                               fontSize: 20,
// //                               fontWeight: FontWeight.bold),
// //                         ),
// //                       ),
// //                       SizedBox(height: s.height*0.02),
// //                       // Course / Degree
// //                       Text(
// //                         " Course  : ${allGlobalvar.Edcoursordegree}",
// //                         style: allstyletext,
// //                       ),
// //                       // school/college/institute
// //                       Text(
// //                         " College Name  : ${allGlobalvar.Edsci1}",
// //                         style: allstyletext,
// //                       ),
// //                       // school/college/institute CGPA
// //                       Text(
// //                         " College CGPA  : ${allGlobalvar.Edsci2}",
// //                         style: allstyletext,
// //                       ),
// //                       // Year of Pass
// //                       Text(
// //                         " Passing Year : ${allGlobalvar.Edpasstime}",
// //                         style: allstyletext,
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ),
// //               // . Side
// //               SingleChildScrollView(
// //                 scrollDirection: Axis.vertical,
// //                 child: Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   mainAxisSize: MainAxisSize.min,
// //                   children: [
// //                     Container(
// //                       width: s.width * 0.8,
// //                       height: s.height * 0.1,
// //                       decoration: const BoxDecoration(
// //                         color: Colors.amber,
// //                         borderRadius: BorderRadius.horizontal(
// //                           right: Radius.circular(50),
// //                         ),
// //                       ),
// //                       child: Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         mainAxisAlignment: MainAxisAlignment.center,
// //                         children: [
// //                           Text(
// //                             "   Pedro Fernandes",
// //                             style: TextStyle(
// //                               fontWeight: FontWeight.bold,
// //                               fontSize: s.height * 0.038,
// //                               color: Colors.black,
// //                             ),
// //                           ),
// //                           const Text(
// //                             "         Secrertary",
// //                             style: TextStyle(
// //                               color: Colors.black,
// //                               fontSize: 12,
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                     SizedBox(height: s.height * 0.02),
// //                     // About Me
// //                     Container(
// //                       width: s.width * 0.4,
// //                       height: s.height * 0.05,
// //                       decoration: const BoxDecoration(
// //                         color: Colors.black,
// //                         borderRadius: BorderRadiusDirectional.horizontal(
// //                           end: Radius.circular(60),
// //                         ),
// //                       ),
// //                       alignment: Alignment.center,
// //                       // About Me
// //                       child: Text(
// //                         "About Me",
// //                         style: TextStyle(
// //                           color: Colors.amber,
// //                           fontSize: s.height * 0.03,
// //                           fontWeight: FontWeight.bold,
// //                         ),
// //                       ),
// //                     ),
// //                     SizedBox(height: s.height * 0.01),
// //                     Row(
// //                       children: [
// //                         SizedBox(width: s.width * 0.02),
// //                         Container(
// //                           width: s.width * 0.8,
// //                           // color: Colors.black,
// //                           child: Text(
// //                             "${allGlobalvar.CareerobjectveDescripation} \n\n ${allGlobalvar.carrierexperirncedcandidate}",
// //                             style: TextStyle(
// //                               color: Colors.grey.shade700,
// //                               fontSize: s.height * 0.013,
// //                             ),
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                     SizedBox(height: s.height * 0.02),
// //                     // Experience
// //                     Container(
// //                       width: s.width * 0.4,
// //                       height: s.height * 0.05,
// //                       decoration: const BoxDecoration(
// //                         color: Colors.black,
// //                         borderRadius: BorderRadiusDirectional.horizontal(
// //                           end: Radius.circular(60),
// //                         ),
// //                       ),
// //                       alignment: Alignment.center,
// //                       // Experience
// //                       child: Text(
// //                         "Experience",
// //                         style: TextStyle(
// //                           color: Colors.amber,
// //                           fontSize: s.height * 0.03,
// //                           fontWeight: FontWeight.bold,
// //                         ),
// //                       ),
// //                     ),
// //                     SizedBox(height: s.height * 0.01),
// //                     // Company Name 2017-20
// //                     Text(
// //                       "   Company Name 2017-20",
// //                       style: TextStyle(
// //                         color: Colors.black,
// //                         fontWeight: FontWeight.bold,
// //                         fontSize: s.height * 0.015,
// //                       ),
// //                     ),
// //                     // job Protion
// //                     Text(
// //                       "    job Protion",
// //                       style: TextStyle(
// //                         fontSize: s.height * 0.012,
// //                       ),
// //                     ),
// //                     SizedBox(height: s.height * 0.02),
// //                     // Education
// //                     Container(
// //                       width: s.width * 0.4,
// //                       height: s.height * 0.05,
// //                       decoration: const BoxDecoration(
// //                         color: Colors.black,
// //                         borderRadius: BorderRadiusDirectional.horizontal(
// //                           end: Radius.circular(60),
// //                         ),
// //                       ),
// //                       alignment: Alignment.center,
// //                       child: Text(
// //                         "Education",
// //                         style: TextStyle(
// //                           color: Colors.amber,
// //                           fontSize: s.height * 0.03,
// //                           fontWeight: FontWeight.bold,
// //                         ),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/back_button_icon.dart';
import 'package:flutter_resume_builder_app/utils/theme_utils.dart';
import 'package:flutter_resume_builder_app/views/modals/modals_varibles.dart';
import 'package:pdf/pdf.dart';
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
    // var image = await networkImage("https://i.pinimg.com/474x/8d/2e/03/8d2e0351c530f93217c09846ea5a82a3.jpg");

    pdf.addPage(
      pw.Page(
        margin: pw.EdgeInsets.zero,
        build: (pw.Context context) => pw.Container(
          height: double.infinity,
          width: double.infinity,
          alignment: pw.Alignment.center,
          decoration: pw.BoxDecoration(
            color: PdfColors.blue50,
            // image: pw.DecorationImage(
            //   image: image,
            // ),
          ),
          child: pw.Column(
            mainAxisSize: pw.MainAxisSize.min,
            // children: [
            //   pw.Container(
            //     height: 250,
            //     width: 250,
            //     decoration: pw.BoxDecoration(
            //       shape: pw.BoxShape.circle,
            //       image: pw.DecorationImage(
            //         image: pw.MemoryImage(
            //           File(allGlobalvar.image!.path).readAsBytesSync(),
            //         ),
            //       ),
            //     ),
            //   ),
            //   pw.SizedBox(
            //     height: 20,
            //   ),
            //   pw.SizedBox(
            //     width: 350,
            //     child: pw.Column(
            //       mainAxisSize: pw.MainAxisSize.min,
            //       children: [
            //         pw.Row(
            //           mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            //           children: [
            //             pw.Text(
            //               "Name :",
            //               style: pw.TextStyle(
            //                 fontSize: 28,
            //                 color: PdfColors.red,
            //               ),
            //             ),
            //             pw.Text(
            //               allGlobalvar.name!,
            //               style: pw.TextStyle(
            //                 fontSize: 28,
            //                 color: PdfColors.red,
            //               ),
            //             ),
            //           ],
            //         ),
            //         pw.Row(
            //           mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            //           children: [
            //             pw.Text(
            //               "Contact :",
            //               style: const pw.TextStyle(
            //                 fontSize: 28,
            //                 color: PdfColors.blue,
            //               ),
            //             ),
            //             pw.Text(
            //               "+91 ${allGlobalvar.contact!.toString()}",
            //               style: pw.TextStyle(
            //                 fontSize: 28,
            //                 color: PdfColors.blue,
            //               ),
            //             ),
            //           ],
            //         ),
            //         ...allGlobalvar.Teskill
            //             .map(
            //               (e) => pw.Text(
            //             "Skill: $e",
            //             style: pw.TextStyle(
            //               fontSize: 26,
            //             ),
            //           ),
            //         )
            //             .toList(),
            //       ],
            //     ),
            //   ),
            // ],
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
