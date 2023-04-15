import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/back_button_icon.dart';
import 'package:flutter_resume_builder_app/utils/routes_utils.dart';
import 'package:flutter_resume_builder_app/utils/theme_utils.dart';

class resumes_build_options_page extends StatefulWidget {
  const resumes_build_options_page({Key? key}) : super(key: key);

  @override
  State<resumes_build_options_page> createState() =>
      _resumes_build_options_pageState();
}

class _resumes_build_options_pageState
    extends State<resumes_build_options_page> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              setState(() {
                Navigator.of(context).pop();
              });
            },child: backicon),
        title: Text(
          "Resume Workspace",
          style: AppBarTitile,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Column(
        children: [
          // AppBar Connect Container
          Container(
            height: s.height * 0.09,
            width: s.width,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              "\nBuild Option",
              style: AppBarTitile,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Column(
                  children: allroutes.buildoption
                      .map(
                        (e) => Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                e.icon,
                                color: Colors.black,
                                fit: BoxFit.cover,
                                height: s.height * 0.06,
                              ),
                              SizedBox(
                                width: s.width * 0.05,
                              ),
                              Text(
                                e.name,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {
                                  setState(
                                    () {
                                      Navigator.of(context).pushNamed(e.route);
                                    },
                                  );
                                },
                                icon:
                                    const Icon(Icons.arrow_forward_ios_rounded),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
