import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/back_button_icon.dart';
import 'package:flutter_resume_builder_app/utils/theme_utils.dart';

class contact_info_page extends StatefulWidget {
  const contact_info_page({Key? key}) : super(key: key);

  @override
  State<contact_info_page> createState() => _contact_info_pageState();
}

class _contact_info_pageState extends State<contact_info_page> {
  int ix = 0;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: const backbutton(),
          title: Text(
            "Contact Info",
            style: AppBarTitile,
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  // Contact
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          ix = 0;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border(
                            bottom: BorderSide(
                              width: ix == 0 ? 4 : 0,
                              color: Colors.cyanAccent,
                            ),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "Contact",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // photo
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          ix = 1;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border(
                            bottom: BorderSide(
                              width: ix == 1 ? 4 : 0,
                              color: Colors.cyanAccent,
                            ),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "Photo",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 11,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: IndexedStack(
                    index: ix,
                    children: [
                      // contact index 0
                      Container(
                        height: s.height * 0.56,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18),
                          child: Column(
                            children: [
                              // Name
                              Row(
                                children: [
                                  Expanded(
                                    child: Icon(
                                      Icons.account_circle,
                                      color: Colors.grey,
                                      size: s.height * 0.05,
                                    ),
                                  ),
                                  SizedBox(width: s.width * 0.1),
                                  Expanded(
                                    flex: 11,
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        hintText: "Enter Name",
                                        labelText: "Name",
                                        border: UnderlineInputBorder(),
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: s.height * 0.01),
                              // Email
                              Row(
                                children: [
                                  Expanded(
                                    child: Icon(
                                      Icons.email_sharp,
                                      color: Colors.grey,
                                      size: s.height * 0.05,
                                    ),
                                  ),
                                  SizedBox(width: s.width * 0.1),
                                  Expanded(
                                    flex: 11,
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        hintText: "Enter E-mail",
                                        labelText: "E-mail",
                                        border: UnderlineInputBorder(),
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: s.height * 0.01),
                              // Phone
                              Row(
                                children: [
                                  Expanded(
                                    child: Icon(
                                      Icons.phone_android_rounded,
                                      color: Colors.grey,
                                      size: s.height * 0.05,
                                    ),
                                  ),
                                  SizedBox(width: s.width * 0.1),
                                  Expanded(
                                    flex: 11,
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        hintText: "Enter Phone Number",
                                        labelText: "Number",
                                        prefixText: "+91",
                                        border: UnderlineInputBorder(),
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: s.height * 0.01),
                              // Address
                              Row(
                                children: [
                                  Expanded(
                                    child: Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.grey,
                                      size: s.height * 0.05,
                                    ),
                                  ),
                                  SizedBox(width: s.width * 0.1),
                                  Expanded(
                                    flex: 11,
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        hintText: "Enter Address",
                                        labelText: "Address",
                                        border: UnderlineInputBorder(),
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: s.height * 0.01),
                              // Address
                              Row(
                                children: [
                                  // Expanded(),
                                  Spacer(),
                                  SizedBox(width: s.width * 0.1),
                                  Expanded(
                                    flex: 11,
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        hintText: "Enter Address ",
                                        labelText: "Address 2",
                                        border: UnderlineInputBorder(),
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: s.height * 0.01),
                              // Address
                              Row(
                                children: [
                                  // Expanded(
                                  //   child: Icon(
                                  //     Icons.account_circle,
                                  //     color: Colors.grey,
                                  //     size: s.height * 0.05,
                                  //   ),
                                  // ),
                                  Spacer(),
                                  SizedBox(width: s.width * 0.1),
                                  Expanded(
                                    flex: 11,
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        hintText: "Enter Address ",
                                        labelText: "Address 3",
                                        border: UnderlineInputBorder(),
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // photo index 1
                      Container(
                        height: s.height * 0.3,
                        width: s.width,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        child: Stack(
                          children: [
                            CircleAvatar(
                              radius: s.height * 0.07,
                              foregroundColor: Colors.grey,
                              child: Align(
                                alignment: Alignment(0.9, 0.9),
                                child: Container(
                                  height: s.height * 0.04,
                                  width: s.width * 0.06,
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: AlignmentDirectional.center,
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.grey.shade300,
      ),
    );
  }
}
