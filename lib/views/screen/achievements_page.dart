import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/theme_utils.dart';
import '../../utils/back_button_icon.dart';

class achievements_page extends StatefulWidget {
  const achievements_page({Key? key}) : super(key: key);

  @override
  State<achievements_page> createState() => _achievements_pageState();
}

class _achievements_pageState extends State<achievements_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: backicon,
        ),
        title: Text(
          "Achievements",
          style: AppBarTitile,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
    );
  }
}
