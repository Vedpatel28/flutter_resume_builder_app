import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/back_button_icon.dart';
import 'package:flutter_resume_builder_app/utils/theme_utils.dart';

// ignore: camel_case_types
class peronal_details_page extends StatefulWidget {
  const peronal_details_page({Key? key}) : super(key: key);

  @override
  State<peronal_details_page> createState() => _peronal_details_pageState();
}

// ignore: camel_case_types
class _peronal_details_pageState extends State<peronal_details_page> {

  bool chackboxone = false;
  bool chackboxtwo = false;
  bool chackboxthree = false;

  String? meritalstatus;
  String? maval;

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
            child: backicon),
        toolbarHeight: s.height * 0.15,
        title: Text(
          "Peronal Details",
          style: AppBarTitile,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: s.height * 0.8,
          width: s.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("DOB", style: titeltext),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      hintText: '    DD/MM/YYYY',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text("Merital Status", style: titeltext),
                  // Single
                  RadioListTile(
                    value: "Single",
                    title: const Text(
                      "Single",
                      style: TextStyle(color: Colors.grey),
                    ),
                    groupValue: meritalstatus,
                    onChanged: (maval) {
                      setState(
                        () {
                          meritalstatus = maval;
                        },
                      );
                    },
                  ),
                  // Married
                  Text("Languages Known", style: titeltext),
                  RadioListTile(
                    value: "Married",
                    title: const Text(
                      "Married",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    groupValue: meritalstatus,
                    onChanged: (maval) {
                      setState(
                        () {
                          meritalstatus = maval;
                        },
                      );
                    },
                  ),
                  CheckboxListTile(
                    title: const Text("English"),
                    value: chackboxone,
                    onChanged: (val) {
                      setState(
                        () {
                          chackboxone = val!;
                        },
                      );
                    },
                  ),
                  CheckboxListTile(
                    title: const Text("Hindi"),
                    value: chackboxtwo,
                    onChanged: (vale) {
                      setState(
                        () {
                          chackboxtwo = vale!;
                        },
                      );
                    },
                  ),
                  CheckboxListTile(
                    value: chackboxthree,
                    title: const Text("Gujarati"),
                    onChanged: (value) {
                      setState(
                        () {
                          chackboxthree = value!;
                        },
                      );
                    },
                  ),
                  Text("Nationality", style: titeltext),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      hintText: '    Indian',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: s.height * 0.04),
                  Row(
                    children: [
                      SizedBox(width: s.width*0.23),
                      GestureDetector(
                        onTap: () {setState(() {},);},
                        child: Container(
                          height: s.height * 0.05,
                          width: s.width*0.3,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "SAVE",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
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
