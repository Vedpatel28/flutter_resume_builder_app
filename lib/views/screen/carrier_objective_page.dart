import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/back_button_icon.dart';
import '../../utils/theme_utils.dart';

class carrier_objective_page extends StatefulWidget {
  const carrier_objective_page({Key? key}) : super(key: key);

  @override
  State<carrier_objective_page> createState() => _carrier_objective_pageState();
}

class _carrier_objective_pageState extends State<carrier_objective_page> {
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
        title: Text("Carrier Objective", style: AppBarTitile),
        toolbarHeight: s.height * 0.15,
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
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
                      TextField(
                        maxLines: 4,
                        decoration: InputDecoration(
                          hintText: "Descripation",
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
                        "Current Designation (Experirnced\nCandidate ",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: s.height * 0.02,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Software Engineer",
                          hintStyle: TextStyle(
                              color: Colors.grey.shade400, fontSize: 16),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade300),
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
      backgroundColor: Colors.grey.shade300,
    );
  }
}
