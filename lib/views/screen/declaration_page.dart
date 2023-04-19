import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/back_button_icon.dart';
import 'package:flutter_resume_builder_app/utils/routes_utils.dart';
import 'package:flutter_resume_builder_app/utils/theme_utils.dart';

class declaration_page extends StatefulWidget {
  const declaration_page({Key? key}) : super(key: key);

  @override
  State<declaration_page> createState() => _declaration_pageState();
}

class _declaration_pageState extends State<declaration_page> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    bool onoffval = false;
    return Scaffold(
      appBar: AppBar(
        leading: const backbutton(),
        toolbarHeight: s.height * 0.15,
        title: Text(
          "Declaration",
          style: AppBarTitile,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          height: s.height * 0.08,
          width: s.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Text(
                  "Declaration",
                  style: titeltext,
                ),
                const Spacer(),
                Switch(
                  value: onoffval,
                  onChanged: (value) {
                    setState(() {
                      onoffval = value;
                      Navigator.of(context)
                          .pushNamed(allroutes.selectdeclaration);
                    });
                  },
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
