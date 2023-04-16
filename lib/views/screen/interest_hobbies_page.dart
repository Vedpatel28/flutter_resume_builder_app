import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/back_button_icon.dart';
import 'package:flutter_resume_builder_app/utils/theme_utils.dart';

class interest_hobbies_page extends StatefulWidget {
  const interest_hobbies_page({Key? key}) : super(key: key);

  @override
  State<interest_hobbies_page> createState() => _interest_hobbies_pageState();
}

class _interest_hobbies_pageState extends State<interest_hobbies_page> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(onTap: () {
          setState(() {
            Navigator.of(context).pop();
          });
        },child: backicon,),
        toolbarHeight: s.height*0.15,
        title: Text(
          "Interest Hobbies",
          style: AppBarTitile,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
    );
  }
}
