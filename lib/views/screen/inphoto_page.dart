import 'package:flutter/material.dart';
class contactin_photo_page extends StatefulWidget {
  const contactin_photo_page({Key? key}) : super(key: key);

  @override
  State<contactin_photo_page> createState() => _contactin_photo_pageState();
}

class _contactin_photo_pageState extends State<contactin_photo_page> {
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
