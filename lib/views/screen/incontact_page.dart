import 'package:flutter/material.dart';

class contactin_contact_page extends StatefulWidget {
  const contactin_contact_page({Key? key}) : super(key: key);

  @override
  State<contactin_contact_page> createState() => _contactin_contact_pageState();
}

// ignore: camel_case_types
class _contactin_contact_pageState extends State<contactin_contact_page> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: s.height*0.15,
        ),
    );
  }
}
