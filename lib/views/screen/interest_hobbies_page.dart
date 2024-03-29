import 'package:flutter_resume_builder_app/utils/theme_utils.dart';
import 'package:flutter_resume_builder_app/views/modals/modals_varibles.dart';

import 'package:flutter/material.dart';

import '../../utils/back_button_icon.dart';

class interest_hobbies_page extends StatefulWidget {
  const interest_hobbies_page({Key? key}) : super(key: key);

  @override
  State<interest_hobbies_page> createState() => _achievements_pagetState();
}

class _achievements_pagetState extends State<interest_hobbies_page> {
  @override
  void dispose() {
    super.dispose();
    allGlobalvar.technicalskillController.removeWhere((element) {
      if (element.text == "") {
        return true;
      } else {
        return false;
      }
    });
    allGlobalvar.technicalskillController.forEach((element) {
      allGlobalvar.Teskill.add("");
      allGlobalvar.Teskill[allGlobalvar.technicalskillController.indexOf(element)] =
          element.text;
    });

    allGlobalvar.Teskill.removeWhere((element) => element == "");
    if (allGlobalvar.technicalskillController.isEmpty) {
      for (int i = 0; i < 2; i++) {
        allGlobalvar.technicalskillController.add(TextEditingController());
      }
    }
  }

  @override
  void initState() {
    super.initState();
    if (allGlobalvar.technicalskillController.isEmpty) {
      for (int i = 0; i < 2; i++) {
        allGlobalvar.technicalskillController.add(TextEditingController());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: const backbutton(),
        toolbarHeight: size.height * 0.15,
        title: Text(
          "Interest & Hobbies",
          style: AppBarTitile,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Container(
          padding: const EdgeInsets.all(24),
          color: Colors.white,
          width: size.width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Enter your Hobbies",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  color: Colors.grey.shade600,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ...List.generate(
                allGlobalvar.technicalskillController.length,
                    (index) => MySkillTile(index: index),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          allGlobalvar.technicalskillController
                              .add(TextEditingController());
                        });
                      },
                      child: const Icon(Icons.add),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }

  Widget MySkillTile({required int index}) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: allGlobalvar.technicalskillController[index],
            decoration: const InputDecoration(
              hintText: "Music , Gaming",
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              allGlobalvar.technicalskillController.removeAt(index);
            });
          },
          icon: const Icon(
            Icons.delete,
          ),
        ),
      ],
    );
  }
}