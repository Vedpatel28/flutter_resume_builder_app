import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/back_button_icon.dart';
import 'package:flutter_resume_builder_app/utils/theme_utils.dart';

// ignore: camel_case_types
class educyion_page extends StatefulWidget {
  const educyion_page({Key? key}) : super(key: key);

  @override
  State<educyion_page> createState() => _educyion_pageState();
}

// ignore: camel_case_types
class _educyion_pageState extends State<educyion_page> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            setState(() {
              Navigator.of(context).pop();
            });
          },
          child: backicon,
        ),
        toolbarHeight: s.height * 0.15,
        title: Text(
          "Educyion",
          style: AppBarTitile,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          padding: EdgeInsets.all(20),
          height: s.height * 0.66,
          width: s.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Course/Degree",
                    style: titeltext,
                  ),
                  SizedBox(height: s.height * 0.01),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      hintText: "B.Tech Information Technology",
                      hintStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                  SizedBox(height: s.height * 0.01),
                  Text("School/College/Institute", style: titeltext),
                  SizedBox(height: s.height * 0.01),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Bhagavan Mahavir University",
                      hintStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                  SizedBox(height: s.height * 0.01),
                  Text("School/College/Institute", style: titeltext),
                  SizedBox(height: s.height * 0.01),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "70% (or) 7.0 CGPA",
                      hintStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                  SizedBox(height: s.height * 0.01),
                  Text(
                    "Year Of Pass",
                    style: titeltext,
                  ),
                  SizedBox(height: s.height * 0.01),
                  TextFormField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: "2019",
                      hintStyle: TextStyle(
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}
