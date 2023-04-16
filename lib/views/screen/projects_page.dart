import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/back_button_icon.dart';
import 'package:flutter_resume_builder_app/utils/theme_utils.dart';

class projects_page extends StatefulWidget {
  const projects_page({Key? key}) : super(key: key);

  @override
  State<projects_page> createState() => _projects_pageState();
}

class _projects_pageState extends State<projects_page> {
  bool technichackbox = false;
  bool technichackbox2 = false;
  bool technichackbox3 = false;

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
          "Projects",
          style: AppBarTitile,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
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
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Project Title",
                    style: titeltext,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(s.height * 0.01),
                      hintText: "Resume Builder App",
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  Text(
                    "Technologies",
                    style: titeltext,
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(
                      "C Programming",
                      style: TextStyle(color: Colors.grey.shade400),
                    ),
                    value: technichackbox,
                    onChanged: (value) {
                      setState(() {
                        technichackbox = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(
                      "C++",
                      style: TextStyle(color: Colors.grey.shade400),
                    ),
                    value: technichackbox3,
                    onChanged: (value) {
                      setState(() {
                        technichackbox3 = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(
                      "Flutter",
                      style: TextStyle(color: Colors.grey.shade400),
                    ),
                    value: technichackbox2,
                    onChanged: (value) {
                      setState(
                        () {
                          technichackbox2 = value!;
                        },
                      );
                    },
                  ),
                  Text(
                    "Roles",
                    style: titeltext,
                  ),
                  SizedBox(height: s.height*0.001,),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(s.height * 0.01),
                      hintText: "Organize team members, Code analysis",
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  SizedBox(height: s.height*0.001,),
                  Text(
                    "Technologies",
                    style: titeltext,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(s.height * 0.01),
                      hintText: "5 - Programmer",
                      hintStyle: TextStyle(color: Colors.grey.shade400,fontSize: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  SizedBox(height: s.height*0.001,),
                  Text(
                    "Project Descripation",
                    style: titeltext,
                  ),
                  SizedBox(height: s.height * 0.001),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(s.height * 0.01),
                      hintText: "Enter Your Project Descripaton",
                      hintStyle: TextStyle(color: Colors.grey.shade400,fontSize: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  SizedBox(height: s.height * 0.04),
                  Row(
                    children: [
                      SizedBox(width: s.width * 0.23),
                      GestureDetector(
                        onTap: () {
                          setState(
                                () {},
                          );
                        },
                        child: Container(
                          height: s.height * 0.05,
                          width: s.width * 0.3,
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
