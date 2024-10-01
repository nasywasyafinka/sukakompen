import 'package:flutter/material.dart';

class KompenCard extends StatelessWidget {
  final String title;
  final String hours;
  final Color color;
  final BoxDecoration boxDecoration; // Add this property

  KompenCard(
      {required this.title,
      required this.hours,
      required this.color,
      required this.boxDecoration});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16), // Padding inside the box
      margin: EdgeInsets.symmetric(vertical: 10), // Spacing between cards
      decoration: boxDecoration, // Use the passed boxDecoration
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(fontSize: 16)),
          Text(hours, style: TextStyle(color: Colors.red)),
        ],
      ),
    );
  }
}
