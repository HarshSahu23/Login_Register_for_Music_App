import 'package:flutter/material.dart';

class whitespace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50),
      width: double.infinity,
    );
  }
}
