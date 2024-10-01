import 'package:flutter/material.dart';

class KompenCard extends StatelessWidget {
  final String title;
  final String hours;
  final Color color;

  KompenCard({required this.title, required this.hours, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(fontSize: 16)),
          Text(hours, style: TextStyle(fontSize: 16, color: Colors.red)),
        ],
      ),
    );
  }
}
