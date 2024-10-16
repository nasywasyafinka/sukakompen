import 'package:flutter/material.dart';

class AkumulasiRow extends StatelessWidget {
  final String semester;
  final String hours;

  const AkumulasiRow({super.key, required this.semester, required this.hours});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(color: Colors.grey, thickness: 1),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              semester,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(width: 8.0),
            Text(
              hours,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        const Divider(color: Colors.grey, thickness: 1),
      ],
    );
  }
}
