import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/routes_utils.dart';
import 'package:flutter_resume_builder_app/views/screen/achievements_page.dart';
import 'package:flutter_resume_builder_app/views/screen/carrier_objective_page.dart';
import 'package:flutter_resume_builder_app/views/screen/declaration_page.dart';
import 'package:flutter_resume_builder_app/views/screen/educyion_page.dart';
import 'package:flutter_resume_builder_app/views/screen/experiences_page.dart';
import 'package:flutter_resume_builder_app/views/screen/interest_hobbies_page.dart';
import 'package:flutter_resume_builder_app/views/screen/peronal_details_page.dart';
import 'package:flutter_resume_builder_app/views/screen/projects_page.dart';
import 'package:flutter_resume_builder_app/views/screen/references_page.dart';
import 'package:flutter_resume_builder_app/views/screen/technical_skills_page.dart';
import 'views/screen/contact_info_page.dart';
import 'views/screen/declaration_after_select_page.dart';
import 'views/screen/home_page.dart';
import 'views/screen/resume_finel_page.dart';
import 'views/screen/resumes_build_options_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true),
      darkTheme: ThemeData(accentColor: Colors.teal),
      routes: {
        allroutes.home: (context) => const home_page(),
        allroutes.buildpage: (context) => const resumes_build_options_page(),
        allroutes.selectdeclaration: (context) =>
            const declaration_page_select(),
        allroutes.finel: (context) => const resume_finel_page(),
        allroutes.buildoption[0].route: (context) => const contact_info_page(),
        allroutes.buildoption[1].route: (context) =>
            const carrier_objective_page(),
        allroutes.buildoption[2].route: (context) =>
            const peronal_details_page(),
        allroutes.buildoption[3].route: (context) => const educyion_page(),
        allroutes.buildoption[4].route: (context) => const experiences_page(),
        allroutes.buildoption[5].route: (context) =>
            const technical_skills_page(),
        allroutes.buildoption[6].route: (context) =>
            const interest_hobbies_page(),
        allroutes.buildoption[7].route: (context) => const projects_page(),
        allroutes.buildoption[8].route: (context) => const achievements_page(),
        allroutes.buildoption[9].route: (context) => const references_page(),
        allroutes.buildoption[10].route: (context) =>
            const declaration_page_select(),
      },
    );
  }
}
