import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/back_button_icon.dart';
import 'package:flutter_resume_builder_app/views/component/resume_snackbar.dart';
import 'package:flutter_resume_builder_app/views/modals/modals_varibles.dart';
import '../../utils/theme_utils.dart';

class carrier_objective_page extends StatefulWidget {
  const carrier_objective_page({Key? key}) : super(key: key);

  @override
  State<carrier_objective_page> createState() => _carrier_objective_pageState();
}

class _carrier_objective_pageState extends State<carrier_objective_page> {
  GlobalKey<FormState> formmath = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const backbutton(),
        title: Text("Carrier Objective", style: AppBarTitile),
        toolbarHeight: s.height * 0.15,
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Form(
            key: formmath,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                Container(
                  height: s.height * 0.3,
                  width: s.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Career Objective",
                          style: titeltext,
                        ),
                        SizedBox(
                          height: s.height * 0.02,
                        ),
                        TextFormField(
                          maxLines: 4,
                          initialValue: allGlobalvar.CareerobjectveDescripation,
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value!.isEmpty) {
                              const Text("Enter Description");
                            } else {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            allGlobalvar.CareerobjectveDescripation = value;
                          },
                          decoration: InputDecoration(
                            hintText: "Description",
                            hintStyle: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 22,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.shade300,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: s.height * 0.02,
                ),
                Container(
                  height: s.height * 0.22,
                  width: s.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "Current Designation (Experirnced\nCandidate) ",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: s.height * 0.02,
                        ),
                        TextFormField(
                          initialValue:
                              allGlobalvar.carrierexperirncedcandidate,
                          validator: (value) {
                            if (value!.isEmpty) {
                              const Text("Enter Current Designation");
                            } else {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            allGlobalvar.carrierexperirncedcandidate = value;
                          },
                          onFieldSubmitted: (value) {
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
                                  text: "Failed to validate !!",
                                  color: Colors.red,
                                ),
                              );
                            }
                          },
                          decoration: InputDecoration(
                            hintText: "Software Engineer",
                            hintStyle: TextStyle(
                                color: Colors.grey.shade400, fontSize: 16),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade300),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}
