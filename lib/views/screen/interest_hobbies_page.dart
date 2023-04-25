import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/back_button_icon.dart';
import 'package:flutter_resume_builder_app/utils/theme_utils.dart';
import 'package:flutter_resume_builder_app/views/modals/modals_varibles.dart';

import '../component/resume_snackbar.dart';

class interest_hobbies_page extends StatefulWidget {
  const interest_hobbies_page({Key? key}) : super(key: key);

  @override
  State<interest_hobbies_page> createState() => _interest_hobbies_pageState();
}

class _interest_hobbies_pageState extends State<interest_hobbies_page> {

  GlobalKey<FormState> formmat = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const backbutton(),
        toolbarHeight: s.height * 0.15,
        title: Text(
          "Interest Hobbies",
          style: AppBarTitile,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
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
                      "Enter Your Hobbies",
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
                            initialValue: allGlobalvar.Ihobbies,
                            validator: (value) {
                              if(value != null){
                                return "Enter Your Hobbies";
                              }else{
                                return null;
                              }
                            },
                            onSaved: (value) {
                              allGlobalvar.Ihobbies = value;
                            },
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.only(left: 20),
                              hintText: "Music, Coding etc.",
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
                    SizedBox(height: s.height*0.02),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            initialValue: allGlobalvar.Ihobbies,
                            validator: (value) {
                              if(value != null){
                                return "Enter Your Hobbies";
                              }else{
                                return null;
                              }
                            },
                            onSaved: (value){
                              allGlobalvar.Ihobbies = value ;
                            },
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.only(left: 20),
                              hintText: "Music, Coding etc.",
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
                    ...allGlobalvar.hobbies
                        .map(
                          (e) => Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  textInputAction: TextInputAction.next,
                                  initialValue: allGlobalvar.Ihobbies,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Please enter Hobbies";
                                    } else {
                                      return null;
                                    }
                                  },
                                  onSaved: (val) {
                                    allGlobalvar.Ihobbies = val;
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
                                    hintText: "Music, Coding etc.",
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
                                    allGlobalvar.hobbies
                                        .remove(allGlobalvar.hobbies);
                                    allGlobalvar.hobbies.remove("");
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
                                allGlobalvar.hobbies.add("");
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
