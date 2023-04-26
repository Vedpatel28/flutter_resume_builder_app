import 'package:flutter_resume_builder_app/utils/theme_utils.dart';
import 'package:flutter_resume_builder_app/views/modals/modals_varibles.dart';

import 'package:flutter/material.dart';

import '../../utils/back_button_icon.dart';

class achievements_paget extends StatefulWidget {
  const achievements_paget({Key? key}) : super(key: key);

  @override
  State<achievements_paget> createState() => _achievements_pagetState    ();
}

class _achievements_pagetState extends State<achievements_paget> {
  @override
  void dispose() {
    super.dispose();
    allGlobalvar.Achievemebntcontroller.removeWhere((element) {
      if (element.text == "") {
        return true;
      } else {
        return false;
      }
    });
    allGlobalvar.Achievemebntcontroller.forEach((element) {
      allGlobalvar.AcAchievement.add("");
      allGlobalvar.AcAchievement[allGlobalvar.Achievemebntcontroller.indexOf(element)] =
          element.text;
    });

    allGlobalvar.AcAchievement.removeWhere((element) => element == "");
    if (allGlobalvar.Achievemebntcontroller.isEmpty) {
      for (int i = 0; i < 2; i++) {
        allGlobalvar.Achievemebntcontroller.add(TextEditingController());
      }
    }
  }

  @override
  void initState() {
    super.initState();
    if (allGlobalvar.Achievemebntcontroller.isEmpty) {
      for (int i = 0; i < 2; i++) {
        allGlobalvar.Achievemebntcontroller.add(TextEditingController());
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
          "Achievements",
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
                "Enter your Achievement",
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
                allGlobalvar.Achievemebntcontroller.length,
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
                          allGlobalvar.Achievemebntcontroller
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
            controller: allGlobalvar.Achievemebntcontroller[index],
            decoration: const InputDecoration(
              hintText: "Complete BCA , P.D.",
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              allGlobalvar.Achievemebntcontroller.removeAt(index);
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