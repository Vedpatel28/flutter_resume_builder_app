import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/back_button_icon.dart';
import 'package:flutter_resume_builder_app/utils/theme_utils.dart';
import 'package:flutter_resume_builder_app/views/component/resume_snackbar.dart';
import 'package:flutter_resume_builder_app/views/modals/modals_varibles.dart';

// ignore: camel_case_types
class educyion_page extends StatefulWidget {
  const educyion_page({Key? key}) : super(key: key);

  @override
  State<educyion_page> createState() => _educyion_pageState();
}

// ignore: camel_case_types
class _educyion_pageState extends State<educyion_page> {
  GlobalKey<FormState> formmath = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const backbutton(),
        toolbarHeight: s.height * 0.15,
        title: Text(
          "Education",
          style: AppBarTitile,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          padding: EdgeInsets.all(15),
          height: s.height * 0.68,
          width: s.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: SingleChildScrollView(
              child: Form(
                key: formmath,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Course/Degree",
                      style: titeltext,
                    ),
                    SizedBox(height: s.height * 0.01),
                    TextFormField(
                      initialValue: allGlobalvar.Edcoursordegree,
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value!.isEmpty) {
                          const Text("Enter Course !!");
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        allGlobalvar.Edcoursordegree = value;
                      },
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
                      initialValue: allGlobalvar.Edsci1,
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value!.isEmpty) {
                          Text("Enter School/College Name !!");
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        allGlobalvar.Edsci1 = value;
                      },
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
                      initialValue: allGlobalvar.Edsci2,
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value!.isEmpty) {
                          const Text("Enter PR. !!");
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        allGlobalvar.Edsci2 = value;
                      },
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
                      initialValue: (allGlobalvar.Edpasstime == null)
                          ? null
                          : allGlobalvar.Edpasstime.toString(),
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value!.isEmpty) {
                          Text("Enter year !!");
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        allGlobalvar.Edpasstime = int.parse(value!);
                      },
                      onFieldSubmitted: (value) {
                        if (formmath.currentState!.validate()) {
                          formmath.currentState!.save();
                          ScaffoldMessenger.of(context).showSnackBar(
                            allsnackBar(
                                text: "Successfully validated !!",
                                color: Colors.green),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            allsnackBar(
                                text: "Failed to validate !!",
                                color: Colors.red),
                          );
                        }
                      },
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: "2019",
                        hintStyle: TextStyle(
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                    SizedBox(width: s.width * 0.2, height: s.height * 0.01),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          formmath.currentState!.reset();
                          allGlobalvar.name = allGlobalvar.email =
                              allGlobalvar.contact = allGlobalvar.ad1 =
                                  allGlobalvar.ad2 = allGlobalvar.ad3 = null;
                        });
                      },
                      child: const Text("Reset"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}
