import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/back_button_icon.dart';
import 'package:flutter_resume_builder_app/utils/routes_utils.dart';
import 'package:flutter_resume_builder_app/utils/theme_utils.dart';

class declaration_page_select extends StatefulWidget {
  const declaration_page_select({Key? key}) : super(key: key);

  @override
  State<declaration_page_select> createState() =>
      _declaration_page_selectState();
}

class _declaration_page_selectState extends State<declaration_page_select> {
  bool onoffswi = false;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            setState(() {
              Navigator.of(context).pushNamed(allroutes.buildpage);
            });
          },
          child: backicon,
        ),
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
        padding: const EdgeInsets.all(20),
        child: Container(
          height: s.height * 0.63,
          width: s.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Declaration",
                      style: titeltext,
                    ),
                    const Spacer(),
                    Switch(
                      value: onoffswi,
                      onChanged: (value) {
                        setState(() {
                          onoffswi = value;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: s.height * 0.01),
                Icon(Icons.radar, size: s.height * 0.1),
                SizedBox(height: s.height * 0.04),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    contentPadding: const EdgeInsets.all(10),
                    hintText: "Descripation",
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
                SizedBox(height: s.height * 0.04),
                Container(
                  height: 2,
                  width: s.width,
                  color: Colors.grey.shade400,
                ),
                SizedBox(height: s.height * 0.02),
                Row(
                  children: [
                    Container(
                      height: s.height * 0.17,
                      width: s.width * 0.38,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Date",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                contentPadding: EdgeInsets.only(left: 10),
                                hintText: "DD/MM/YYYY",
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: s.width * .01),
                    Container(
                      height: s.height * 0.17,
                      width: s.width * 0.38,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Place(Interview\nvenue/city)",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                contentPadding: EdgeInsets.only(left: 10),
                                hintText: "Eg. Surat",
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: s.height*0.008,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: s.width * 0.4,
                      height: s.height * 0.05,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "SAVE",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
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
