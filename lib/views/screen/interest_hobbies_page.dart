import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/back_button_icon.dart';
import 'package:flutter_resume_builder_app/utils/theme_utils.dart';
import 'package:flutter_resume_builder_app/views/modals/modals_varibles.dart';

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
        leading: const backbutton(),
        toolbarHeight: s.height * 0.15,
        title: Text(
          "Interest Hobbies",
          style: AppBarTitile,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
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
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: s.height * 0.02,
                  ),
                  const Text(
                    "Enter Your Skills",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: s.height * 0.03,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(left: 20),
                            hintText: "C Programming, Web Technical",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  ),
                  ...allGlobalvar.technicalskill
                      .map(
                        (e) => Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 20),
                                  hintText: "C Programming, Web Technical",
                                  hintStyle: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  allGlobalvar.technicalskill
                                      .remove(allGlobalvar.technicalskill);
                                  allGlobalvar.technicalskill.remove("");
                                });
                              },
                              icon: Icon(Icons.delete),
                            ),
                          ],
                        ),
                      )
                      .toList(),
                  SizedBox(
                    height: s.height * 0.04,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              allGlobalvar.technicalskill.add("");
                            });
                          },
                          child: Icon(Icons.add),
                        ),
                      ),
                    ],
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
