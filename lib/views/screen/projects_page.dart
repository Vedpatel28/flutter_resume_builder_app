import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/theme_utils.dart';

class projects_page extends StatefulWidget {
  const projects_page({Key? key}) : super(key: key);

  @override
  State<projects_page> createState() => _projects_pageState();
}

class _projects_pageState extends State<projects_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Projects",
          style: AppBarTitile,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
    );
  }
}
