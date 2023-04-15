import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/icon_utils.dart';
import 'package:flutter_resume_builder_app/utils/routes_utils.dart';
import 'package:flutter_resume_builder_app/utils/theme_utils.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(35),
          ),
        ),
        toolbarHeight: s.height * 0.18,
        title: Column(
          children: [
            Text("Resume Builder", style: AppBarTitile),
            SizedBox(
              height: s.height * 0.06,
            ),
            Text("RESUMES", style: AppBarTitile),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: s.height * 0.1,
            ),
            Image.asset(
              iconePath + "open-cardboard-box.png",
              height: s.height * 0.1,
              color: Colors.indigo.shade500,
            ),
            SizedBox(
              height: s.height * 0.01,
            ),
            Text(
              "No Resumes press + for Create new resumes",
              style: TextStyle(
                color: Colors.indigo.shade700,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.of(context).pushNamed(allroutes.buildpage);
          });
        },
        tooltip: "Creat New Resumes",
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.indigo.shade300,
      ),
    );
  }
}
