import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/back_button_icon.dart';
import 'package:flutter_resume_builder_app/utils/theme_utils.dart';
import 'package:flutter_resume_builder_app/views/component/resume_snackbar.dart';
import 'package:flutter_resume_builder_app/views/modals/modals_varibles.dart';

// ignore: camel_case_types
class experiences_page extends StatefulWidget {
  const experiences_page({Key? key}) : super(key: key);

  @override
  State<experiences_page> createState() => _experiences_pageState();
}

// ignore: camel_case_types
class _experiences_pageState extends State<experiences_page> {
  String? employedstatusredbox;

  GlobalKey<FormState> formmath = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const backbutton(),
        toolbarHeight: s.height * 0.15,
        title: Text("Experiences", style: AppBarTitile),
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
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Form(
                key: formmath,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Company Name",
                      style: titeltext,
                    ),
                    TextFormField(
                      initialValue: allGlobalvar.Excompany,
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value!.isEmpty) {
                          const Text("Enter Company name !!");
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        allGlobalvar.Excompany = value;
                      },
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
                    TextFormField(
                      initialValue: allGlobalvar.Exsccoin,
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value!.isEmpty) {
                          const Text("Enter Name Of School/College ");
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        allGlobalvar.Exsccoin = value;
                      },
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
                    TextFormField(
                      initialValue: allGlobalvar.Exexperiencesroles,
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value!.isEmpty) {
                          const Text("Enter Roles !!");
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        allGlobalvar.Exexperiencesroles = value;
                      },
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
                            if (preemp == true) {
                              allGlobalvar.Exemploy = "Previously Employed";
                            } else {
                              allGlobalvar.Exemploy = "Currently Employed";
                            }
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
                                "Date Joined",
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 20,
                                ),
                              ),
                              TextFormField(
                                initialValue: (allGlobalvar.Exdatejoin == null)
                                    ? null
                                    : allGlobalvar.Exdatejoin.toString(),
                                textInputAction: TextInputAction.next,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    const Text("Date !!");
                                  } else {
                                    return null;
                                  }
                                },
                                onSaved: (value) {
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  contentPadding: const EdgeInsets.all(5),
                                  hintText: "DD/MM/YYYY",
                                  hintStyle: TextStyle(
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
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
                              TextFormField(
                                initialValue: (allGlobalvar.Exdateexit == null)
                                    ? null
                                    : allGlobalvar.Exdateexit.toString(),
                                validator: (value) {
                                  if (value!.isEmpty == null) {
                                    const Text("Date!!");
                                  } else {
                                    return null;
                                  }
                                },
                                onSaved: (value) {
                                  allGlobalvar.Exdateexit = int.parse(value!);
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  contentPadding: const EdgeInsets.all(5),
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
                        GestureDetector(
                          onTap: () {
                            setState(
                                  () {},
                            );
                          },
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (formmath.currentState!.validate()) {
                                  formmath.currentState!.save();
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
