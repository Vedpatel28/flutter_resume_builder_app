import 'package:flutter/material.dart';

SnackBar allsnackBar({required String text, required Color color}) {
  return SnackBar(
    duration: const Duration(seconds: 2),
    behavior: SnackBarBehavior.floating,
    backgroundColor: color,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    content: Text(text),
    elevation: 2,
    margin: const EdgeInsets.all(20),
  );
}