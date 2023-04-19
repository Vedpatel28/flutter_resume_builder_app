import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/back_button_icon.dart';
import 'package:flutter_resume_builder_app/utils/theme_utils.dart';

class technical_skills_page extends StatefulWidget {
  const technical_skills_page({Key? key}) : super(key: key);

  @override
  State<technical_skills_page> createState() => _technical_skills_pageState();
}

class _technical_skills_pageState extends State<technical_skills_page> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: s.height * 0.15,
        leading: const backbutton(),
        title: Text(
          "Technical Skills",
          style: AppBarTitile,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: s.height * 0.4,
          width: s.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: s.height * 0.02,
                  ),
                  const Text(
                    "Enter Your Skills",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: s.height * 0.03,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20),
                      hintText: "C Programming, Web Technical",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: s.height * 0.02,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20),
                      hintText: "C Programming, Web Technical",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: s.height * 0.04,
                  ),
                  Container(
                    height: s.height * 0.056,
                    width: s.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 2,
                      ),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.grey.shade300,
                      size: s.height * 0.05,
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
