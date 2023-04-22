import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_resume_builder_app/utils/back_button_icon.dart';
import 'package:flutter_resume_builder_app/utils/theme_utils.dart';
import 'package:flutter_resume_builder_app/views/component/resume_snackbar.dart';
import 'package:flutter_resume_builder_app/views/modals/modals_varibles.dart';
import 'package:image_picker/image_picker.dart';

class contact_info_page extends StatefulWidget {
  const contact_info_page({Key? key}) : super(key: key);

  @override
  State<contact_info_page> createState() => _contact_info_pageState();
}

class _contact_info_pageState extends State<contact_info_page> {
  int ix = 0;

  GlobalKey<FormState> formmet = GlobalKey<FormState>();

  ImagePicker imagepic = ImagePicker();

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
                padding: const EdgeInsets.all(20),
                child: IndexedStack(
                  index: ix,
                  children: [
                    // contact index 0
                    Container(
                      height: s.height * 0.68,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              // Name
                              Form(
                                key: formmet,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
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
                                              textInputAction:
                                                  TextInputAction.next,
                                              initialValue: allGlobalvar.name,
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return "Enter Name !!";
                                                } else {
                                                  return null;
                                                }
                                              },
                                              onSaved: (value) {
                                                allGlobalvar.name = value;
                                              },
                                              decoration: const InputDecoration(
                                                hintText: "Enter Name",
                                                labelText: "Name",
                                                border: UnderlineInputBorder(),
                                                hintStyle: TextStyle(
                                                    color: Colors.grey),
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
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                              textInputAction:
                                                  TextInputAction.next,
                                              initialValue: allGlobalvar.email,
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return "Enter Name !!";
                                                } else {
                                                  return null;
                                                }
                                              },
                                              onSaved: (value) {
                                                allGlobalvar.email = value;
                                              },
                                              decoration: const InputDecoration(
                                                hintText: "Enter E-mail",
                                                labelText: "E-mail",
                                                border: UnderlineInputBorder(),
                                                hintStyle: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: s.height * 0.01),
                                      // contact
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
                                              maxLength: 10,
                                              textInputAction:
                                                  TextInputAction.next,
                                              keyboardType: TextInputType.phone,
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .digitsOnly,
                                              ],
                                              initialValue:
                                                  (allGlobalvar.contact == null)
                                                      ? null
                                                      : allGlobalvar.contact
                                                          .toString(),
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "Please enter contact...";
                                                } else if (val!.length < 10) {
                                                  return "Contact number must have 10 digits...";
                                                } else {
                                                  return null;
                                                }
                                              },
                                              onSaved: (val) {
                                                allGlobalvar.contact =
                                                    int.parse(val!);
                                              },
                                              decoration: const InputDecoration(
                                                hintText: "Enter Phone Number",
                                                labelText: "Number",
                                                prefixText: "+91",
                                                border: UnderlineInputBorder(),
                                                hintStyle: TextStyle(
                                                    color: Colors.grey),
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
                                              textInputAction:
                                                  TextInputAction.next,
                                              initialValue: allGlobalvar.ad1,
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "Please enter address...";
                                                } else {
                                                  return null;
                                                }
                                              },
                                              onSaved: (val) {
                                                allGlobalvar.ad1 = val;
                                              },
                                              onFieldSubmitted: (val) {
                                                if (formmet.currentState!
                                                    .validate()) {
                                                  formmet.currentState!.save();
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    allsnackBar(
                                                      text:
                                                          "Successfully validated !!",
                                                      color: Colors.green,
                                                    ),
                                                  );
                                                } else {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    allsnackBar(
                                                      text:
                                                          "Failled to validate !!",
                                                      color: Colors.red,
                                                    ),
                                                  );
                                                }
                                              },
                                              decoration: const InputDecoration(
                                                hintText: "Enter Address",
                                                labelText: "Address",
                                                border: UnderlineInputBorder(),
                                                hintStyle: TextStyle(
                                                    color: Colors.grey),
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
                                          const Spacer(),
                                          SizedBox(width: s.width * 0.1),
                                          Expanded(
                                            flex: 11,
                                            child: TextFormField(
                                              decoration: const InputDecoration(
                                                hintText: "Enter Address ",
                                                labelText: "Address 2",
                                                border: UnderlineInputBorder(),
                                                hintStyle: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: s.height * 0.01),
                                      // Address
                                      Row(
                                        children: [
                                          const Spacer(),
                                          SizedBox(width: s.width * 0.1),
                                          Expanded(
                                            flex: 11,
                                            child: TextFormField(
                                              decoration: const InputDecoration(
                                                hintText: "Enter Address ",
                                                labelText: "Address 3",
                                                border: UnderlineInputBorder(),
                                                hintStyle: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: s.height * 0.03),
                                      ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            formmet.currentState!.reset();
                                            allGlobalvar.name = allGlobalvar
                                                .email = allGlobalvar
                                                    .contact =
                                                allGlobalvar.ad1 =
                                                    allGlobalvar.ad2 =
                                                        allGlobalvar.ad3 = null;
                                          });
                                        },
                                        child: const Text("Reset"),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
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
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: s.height * 0.08,
                            foregroundColor: Colors.grey,
                            backgroundColor: Colors.grey,
                            foregroundImage: (allGlobalvar.image != null)
                                ? FileImage(allGlobalvar.image!)
                                : null,
                            child: Text("ADD", style: titeltext),
                          ),
                          FloatingActionButton.small(
                            elevation: 5,
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  alignment: Alignment.center,
                                  shadowColor: Colors.black,
                                  shape: UnderlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  title: Text("Select For Add Image",
                                      style: titeltext),
                                  icon: const Icon(
                                      Icons.add_photo_alternate_outlined),
                                  elevation: 4,
                                  buttonPadding: const EdgeInsets.all(12),
                                  content: Container(
                                    height: s.height * 0.1,
                                    alignment: Alignment.center,
                                    child: const Text(
                                        "Click Camera 📷 Button For Add Live Photo.\n"
                                        "Click Gallery 🌌 Button For Add all ready Clicked Photo.\n"),
                                  ),
                                  actions: [
                                    ElevatedButton.icon(
                                      onPressed: () async {
                                        Navigator.of(context).pop();
                                        XFile? img = await imagepic.pickImage(
                                            source: ImageSource.camera);
                                        if (img != null) {
                                          setState(() {
                                            allGlobalvar.image = File(img.path);
                                          });
                                        }
                                      },
                                      label: const Text("Camera"),
                                      icon:
                                          const Icon(Icons.camera_alt_outlined),
                                    ),
                                    ElevatedButton.icon(
                                      onPressed: () async {
                                        Navigator.of(context).pop();
                                        XFile? img = await imagepic.pickImage(
                                            source: ImageSource.gallery);
                                        if (img != null) {
                                          setState(() {
                                            allGlobalvar.image = File(img.path);
                                          });
                                        }
                                      },
                                      label: const Text("Gallery"),
                                      icon: const Icon(Icons.photo_library),
                                    ),
                                  ],
                                ),
                              );
                            },
                            backgroundColor: Colors.blue,
                            child: const Icon(
                                Icons.enhance_photo_translate_outlined),
                          ),
                        ],
                      ),
                    ),
                  ],
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
