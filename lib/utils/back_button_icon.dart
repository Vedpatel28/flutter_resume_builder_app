import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/utils/icon_utils.dart';

Widget backicon = const Icon(
  Icons.arrow_back_ios_new_rounded,
  color: Colors.white,
);

TextStyle textfildstyle = const TextStyle(
  color: Colors.grey,
  fontWeight: FontWeight.bold,
  fontSize: 16,
);

TextStyle titeltext = const TextStyle(
  color: Colors.blue,
  fontSize: 22,
  fontWeight: FontWeight.bold,
);

class backbutton extends StatelessWidget {
  const backbutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        ScaffoldMessenger.of(context).removeCurrentSnackBar();
        Navigator.of(context).pop();
      },
      icon: const Icon(
        Icons.arrow_back_ios_rounded,
        color: Colors.white,
      ),
    );
  }
}
