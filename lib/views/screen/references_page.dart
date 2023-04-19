import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/back_button_icon.dart';
import 'package:flutter_resume_builder_app/utils/theme_utils.dart';

class references_page extends StatefulWidget {
  const references_page({Key? key}) : super(key: key);

  @override
  State<references_page> createState() => _references_pageState();
}

class _references_pageState extends State<references_page> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const backbutton(),
        toolbarHeight: s.height * 0.15,
        title: Text(
          "References",
          style: AppBarTitile,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          height: s.height * 0.55,
          width: s.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("References Name", style: titeltext),
                  SizedBox(height: s.height*0.02,),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      hintText: "Sures Shah",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: s.height*0.02,),
                  Text("Designation", style: titeltext),
                  SizedBox(height: s.height*0.02,),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      hintText: "Marketing Manager,ID-54686",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: s.height*0.02,),
                  Text("Organization/institute", style: titeltext),
                  SizedBox(height: s.height*0.02,),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      hintText: "Green Energy pvt.Ltd",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
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
