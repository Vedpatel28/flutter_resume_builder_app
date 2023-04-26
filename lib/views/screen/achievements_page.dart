import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/theme_utils.dart';
import '../../utils/back_button_icon.dart';
import 'package:flutter_resume_builder_app/views/modals/modals_varibles.dart';

import '../component/resume_snackbar.dart';

class achievements_page extends StatefulWidget {
  const achievements_page({Key? key}) : super(key: key);

  @override
  State<achievements_page> createState() => _achievements_pageState();
}

class _achievements_pageState extends State<achievements_page> {
  GlobalKey<FormState> formmat = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const backbutton(),
        toolbarHeight: s.height * 0.15,
        title: Text(
          "Achievements",
          style: AppBarTitile,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
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
              child: Form(
                key: formmat,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: s.height * 0.02,
                    ),
                    const Text(
                      "Enter Your Achievements",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: s.height * 0.03,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            initialValue: allGlobalvar.AcAchievement,
                            textInputAction: TextInputAction.next,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter Your Achievement";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (value) {
                              allGlobalvar.AcAchievement = value;
                            },
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.only(left: 20),
                              hintText: "1st in CodeLite,Compliant BCA",
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.delete),
                        ),
                      ],
                    ),
                    SizedBox(height: s.height * 0.02),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            initialValue: allGlobalvar.AcAchievement,
                            textInputAction: TextInputAction.next,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter Your Achievement";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (value) {
                              allGlobalvar.AcAchievement = value;
                            },
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.only(left: 20),
                              hintText: "1st in CodeLite,Compliant BCA",
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.delete),
                        ),
                      ],
                    ),
                    ...allGlobalvar.technicalskill
                        .map(
                          (e) => Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  textInputAction: TextInputAction.next,
                                  initialValue: allGlobalvar.AcAchievement,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Please enter address...";
                                    } else {
                                      return null;
                                    }
                                  },
                                  onSaved: (val) {
                                    allGlobalvar.AcAchievement = val;
                                  },
                                  onFieldSubmitted: (val) {
                                    if (formmat.currentState!.validate()) {
                                      formmat.currentState!.save();
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        allsnackBar(
                                          text: "Successfully validated !!",
                                          color: Colors.green,
                                        ),
                                      );
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        allsnackBar(
                                          text: "Failed to validate !!",
                                          color: Colors.red,
                                        ),
                                      );
                                    }
                                  },
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 20),
                                    hintText: "1st in CodeLite,Compliant BCA",
                                    hintStyle: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    allGlobalvar.technicalskill
                                        .remove(allGlobalvar.technicalskill);
                                    allGlobalvar.technicalskill.remove("");
                                  });
                                },
                                icon: const Icon(Icons.delete),
                              ),
                            ],
                          ),
                        )
                        .toList(),
                    SizedBox(
                      height: s.height * 0.04,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                allGlobalvar.technicalskill.add("");
                              });
                            },
                            child: const Icon(Icons.add),
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
