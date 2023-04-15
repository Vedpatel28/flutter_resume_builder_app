import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/theme_utils.dart';

class educyion_page extends StatefulWidget {
  const educyion_page({Key? key}) : super(key: key);

  @override
  State<educyion_page> createState() => _educyion_pageState();
}

class _educyion_pageState extends State<educyion_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Educyion", style: AppBarTitile),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
    );
  }
}