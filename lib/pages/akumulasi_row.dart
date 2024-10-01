import 'package:flutter/material.dart';

class AkumulasiRow extends StatelessWidget {
  final String semester;
  final String hours;

  AkumulasiRow({required this.semester, required this.hours});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(semester),
        Text(hours),
      ],
    );
  }
}
