import 'package:flutter/material.dart';

class CustomView extends StatelessWidget {
  final IconData ic;
  final String txt;

  const CustomView(this.ic, this.txt, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: Icon(ic),
        title: Text(
          txt,
          style: TextStyle(
            color: Color(0Xb319198f),
            fontSize: 16,
            fontFamily: 'Apple English'
          ),
        ),
      ),
    );
  }
}
