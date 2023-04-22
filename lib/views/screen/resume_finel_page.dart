import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/views/modals/modals_varibles.dart';

class resume_finel_page extends StatefulWidget {
  const resume_finel_page({Key? key}) : super(key: key);

  @override
  State<resume_finel_page> createState() => _resume_finel_pageState();
}

class _resume_finel_pageState extends State<resume_finel_page> {
  int a = 2;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: s.width * 0.7,
                height: s.height * 0.97,
                color: Colors.black,
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: s.width,
                        color: Colors.transparent,
                        child: CircleAvatar(
                          radius: s.height * 0.1,
                          foregroundImage: (allGlobalvar.image != null)
                              ? FileImage(allGlobalvar.image!)
                              : null,
                        ),
                      ),
                      SizedBox(height: s.height * 0.01),
                      // personal info
                      Container(
                        height: s.height * 0.05,
                        width: s.width,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(20),
                            top: Radius.elliptical(15, 50),
                          ),
                          color: Colors.amber,
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "Personal Info",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      // name
                      Text(
                        "\n Name     : ${allGlobalvar.name}",
                        style: const TextStyle(
                            color: Colors.amberAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      // e-mail
                      Text(
                        " E-Mail    : ${allGlobalvar.email}",
                        style: const TextStyle(
                            color: Colors.amberAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      // contact
                      Text(
                        " Contact  : ${allGlobalvar.contact}",
                        style: const TextStyle(
                            color: Colors.amberAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      // address
                      Text(
                        " Address : ${allGlobalvar.ad1}",
                        style: const TextStyle(
                            color: Colors.amberAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: s.height * 0.02),
                      // personal Details
                      Container(
                        height: s.height * 0.05,
                        width: s.width,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(20),
                            top: Radius.elliptical(15, 50),
                          ),
                          color: Colors.amber,
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "Personal Details",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      // DOB
                      Text(
                        "\n DOB              : ${allGlobalvar.dob}",
                        style: const TextStyle(
                            color: Colors.amberAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      // Merital
                      Text(
                        " Marital         : ${allGlobalvar.Merital}",
                        style: const TextStyle(
                            color: Colors.amberAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      // Languages
                      Text(
                        " Languages  : ${allGlobalvar.Languages}",
                        style: const TextStyle(
                            color: Colors.amberAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      // Nationality
                      Text(
                        " Nationality  : ${allGlobalvar.nationality}",
                        style: const TextStyle(
                            color: Colors.amberAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: s.width * 0.8,
                      height: s.height * 0.1,
                      decoration: const BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(50),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "   Pedro Fernandes",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: s.height * 0.038,
                              color: Colors.black,
                            ),
                          ),
                          const Text(
                            "         Secrertary",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: s.height * 0.02),
                    // About Me
                    Container(
                      width: s.width * 0.4,
                      height: s.height * 0.05,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadiusDirectional.horizontal(
                          end: Radius.circular(60),
                        ),
                      ),
                      alignment: Alignment.center,
                      // About Me
                      child: Text(
                        "About Me",
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: s.height * 0.03,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: s.height * 0.01),
                    Text(
                      "    aeu f  uuao jsh ayuisgifhnd fhyfjhsfkjsf auiojoidhoih \n    fojooioijoa hioiuoijdaojudhusiofjoj oaifjokj ioihoja \n    podjoiaidio jhif ui io uoiajsfi iofuiaio  auio jio h duifdj\n     fuioh iodf oi fiosjf io fuif iuo o dsio hfiosjdf hs fuio",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: s.height * 0.013,
                      ),
                    ),
                    SizedBox(height: s.height * 0.02),
                    // Experience
                    Container(
                      width: s.width * 0.4,
                      height: s.height * 0.05,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadiusDirectional.horizontal(
                          end: Radius.circular(60),
                        ),
                      ),
                      alignment: Alignment.center,
                      // Experience
                      child: Text(
                        "Experience",
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: s.height * 0.03,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: s.height * 0.01),
                    // Company Name 2017-20
                    Text(
                      "   Company Name 2017-20",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: s.height * 0.015,
                      ),
                    ),
                    // job Protion
                    Text(
                      "    job Protion",
                      style: TextStyle(
                        fontSize: s.height * 0.012,
                      ),
                    ),
                    SizedBox(height: s.height * 0.02),
                    // Education
                    Container(
                      width: s.width * 0.4,
                      height: s.height * 0.05,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadiusDirectional.horizontal(
                          end: Radius.circular(60),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Education",
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: s.height * 0.03,
                          fontWeight: FontWeight.bold,
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
    );
  }
}
