import 'package:flutter/material.dart';
import '../../utils/theme_utils.dart';

class carrier_objective_page extends StatefulWidget {
  const carrier_objective_page({Key? key}) : super(key: key);

  @override
  State<carrier_objective_page> createState() => _carrier_objective_pageState();
}

class _carrier_objective_pageState extends State<carrier_objective_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carrier Objective", style: AppBarTitile),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
    );
  }
}
