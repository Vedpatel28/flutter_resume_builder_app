import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/theme_utils.dart';

class references_page extends StatefulWidget {
  const references_page({Key? key}) : super(key: key);

  @override
  State<references_page> createState() => _references_pageState();
}

class _references_pageState extends State<references_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "References",
          style: AppBarTitile,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
    );
  }
}
