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
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: backicon,
        ),
        toolbarHeight: s.height*0.15,
        title: Text(
          "Achievements",
          style: AppBarTitile,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body : Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: s.height * 0.4,
          width: s.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: s.height * 0.02,
                  ),
                  const Text(
                    "Enter Achievements",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: s.height * 0.03,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20),
                      hintText: "Exceeded sales 17% average",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: s.height * 0.02,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20),
                      hintText: "Exceeded sales 17% average",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: s.height * 0.04,
                  ),
                  Container(
                    height: s.height * 0.06,
                    width: s.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 2,
                      ),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.grey.shade300,
                      size: s.height * 0.05,
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
