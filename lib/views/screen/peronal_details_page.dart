import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/back_button_icon.dart';
import 'package:flutter_resume_builder_app/utils/theme_utils.dart';
import 'package:flutter_resume_builder_app/views/component/resume_snackbar.dart';
import 'package:flutter_resume_builder_app/views/modals/modals_varibles.dart';

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

  GlobalKey<FormState> formmet = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const backbutton(),
        toolbarHeight: s.height * 0.15,
        title: Text(
          "Personal Details",
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
          child: Form(
            key: formmet,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("DOB", style: titeltext),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      initialValue: (allGlobalvar.dob == null)
                          ? null
                          : allGlobalvar.dob.toString(),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter DOB...";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (val) {
                        allGlobalvar.dob = val! ;
                      },
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
                            if (maval == true) {
                              allGlobalvar.Merital = "Married";
                            } else {
                              allGlobalvar.Merital = "Single";
                            }
                          },
                        );
                      },
                    ),
                    // Married
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
                            if (maval == true) {
                              allGlobalvar.Merital = "Married";
                            } else {
                              allGlobalvar.Merital = "Single";
                            }
                          },
                        );
                      },
                    ),
                    Text("Languages Known", style: titeltext),
                    CheckboxListTile(
                      title: const Text("English"),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: chackboxone,
                      onChanged: (val) {
                        setState(
                          () {
                            (val = true)
                                ? allGlobalvar.Languages = "English"
                                : null;
                            chackboxone = val!;
                          },
                        );
                      },
                    ),
                    CheckboxListTile(
                      title: const Text("Hindi"),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: chackboxtwo,
                      onChanged: (vale) {
                        setState(
                          () {
                            (vale = true)
                                ? allGlobalvar.Languages = "Hindi"
                                : null;
                            chackboxtwo = vale!;
                          },
                        );
                      },
                    ),
                    CheckboxListTile(
                      value: chackboxthree,
                      title: const Text("Gujarati"),
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (value) {
                        setState(
                          () {
                            (value = true)
                                ? allGlobalvar.Languages = "Gujarati"
                                : null;
                            chackboxthree = value!;
                          },
                        );
                      },
                    ),
                    Text("Nationality", style: titeltext),
                    SizedBox(height: s.height * 0.01),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      initialValue: (allGlobalvar.nationality == null)
                          ? null
                          : allGlobalvar.nationality.toString(),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please Nationality...";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (val) {
                        allGlobalvar.nationality = val!;
                      },
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
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            setState(
                              () {},
                            );
                          },
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (formmet.currentState!.validate()) {
                                  formmet.currentState!.save();
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    allsnackBar(
                                      text: "Successfully validated !!",
                                      color: Colors.green,
                                    ),
                                  );
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    allsnackBar(
                                      text: "Failled to validate !!",
                                      color: Colors.red,
                                    ),
                                  );
                                }
                              });
                            },
                            child: const Text(
                              "SAVE",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                      ],
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
