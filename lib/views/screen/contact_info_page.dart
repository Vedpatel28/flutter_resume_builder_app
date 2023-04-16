import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/back_button_icon.dart';
import 'package:flutter_resume_builder_app/utils/routes_utils.dart';
import 'package:flutter_resume_builder_app/utils/theme_utils.dart';

class contact_info_page extends StatefulWidget {
  const contact_info_page({Key? key}) : super(key: key);

  @override
  State<contact_info_page> createState() => _contact_info_pageState();
}

class _contact_info_pageState extends State<contact_info_page> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: backicon,
          ),
          title: Text(
            "Contact Info",
            style: AppBarTitile,
          ),
          bottom: TabBar(
            indicatorColor: Colors.indigo,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3,
            indicatorPadding: EdgeInsets.all(4),
            tabs: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.of(context).pushNamed(allroutes.buildoption[2] as String,);
                  });
                },
                child: Tab(
                  child: Text(
                    "Contact",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.of(context).pushNamed(allroutes.buildoption[3] as String);
                  });
                },
                child: Tab(
                  height: 30,
                  child: Text(
                    "Photo",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
