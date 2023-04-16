import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/back_button_icon.dart';
import 'package:flutter_resume_builder_app/utils/theme_utils.dart';

// ignore: camel_case_types
class experiences_page extends StatefulWidget {
  const experiences_page({Key? key}) : super(key: key);

  @override
  State<experiences_page> createState() => _experiences_pageState();
}

// ignore: camel_case_types
class _experiences_pageState extends State<experiences_page> {
  String? employedstatusredbox;

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
        title: Text("Experiences", style: AppBarTitile),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          height: s.height * 0.8,
          width: s.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Company Name",
                    style: titeltext,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "New Enterprise, San Francisco",
                        hintStyle: TextStyle(
                            color: Colors.grey.shade400, fontSize: 18)),
                  ),
                  SizedBox(height: s.height * 0.01),
                  Text(
                    "School/College/Institute",
                    style: titeltext,
                  ),
                  SizedBox(height: s.height * 0.01),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Quality Test Engineer",
                        hintStyle: TextStyle(
                            color: Colors.grey.shade400, fontSize: 18)),
                  ),
                  SizedBox(height: s.height * 0.01),
                  Text(
                    "Roles (optional)",
                    style: titeltext,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText:
                            "Working With team members to Come up With new concepts and product analysis",
                        hintStyle: TextStyle(
                            color: Colors.grey.shade400, fontSize: 18)),
                  ),
                  SizedBox(height: s.height * 0.01),
                  const Text(
                    "Employed Status",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  // Previously Employed
                  RadioListTile(
                    value: "Previously Employed",
                    title: const Text(
                      "Previously Employed",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    groupValue: employedstatusredbox,
                    onChanged: (preemp) {
                      setState(
                        () {
                          employedstatusredbox = preemp;
                        },
                      );
                    },
                  ),
                  RadioListTile(
                    value: "Currently Employed",
                    title: const Text(
                      "Currently Employed",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    groupValue: employedstatusredbox,
                    onChanged: (curremp) {
                      setState(
                        () {
                          employedstatusredbox = curremp;
                        },
                      );
                    },
                  ),
                  // Currently Employed
                  Container(
                    height: s.height * 0.001,
                    color: Colors.grey.shade400,
                  ),
                  SizedBox(
                    height: s.height * 0.01,
                  ),
                  Row(
                    children: [
                      Container(
                        height: s.height * 0.12,
                        width: s.width * 0.38,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Data Joined",
                              style: TextStyle(
                                color: Colors.grey.shade700,
                                fontSize: 20,
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                contentPadding: EdgeInsets.all(5),
                                hintText: "DD/MM/YYYY",
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: s.height * 0.12,
                        width: s.width * 0.38,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Data Exit",
                              style: TextStyle(
                                color: Colors.grey.shade700,
                                fontSize: 20,
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                contentPadding: EdgeInsets.all(5),
                                hintText: "DD/MM/YYYY",
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: s.width * 0.4,
                        height: s.height * 0.05,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "SAVE",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
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
