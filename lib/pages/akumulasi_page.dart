import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AkumulasiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Suka Kompen.',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w900,
              color: const Color(0xFF191970),
            ),
          ),
        ),
        toolbarHeight: 89.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Akumulasi Alpha",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            AkumulasiRow(semester: "Semester 1", hours: "16 Jam"),
            AkumulasiRow(semester: "Semester 2", hours: "8 Jam"),
            AkumulasiRow(semester: "Semester 3", hours: "4 Jam"),
            AkumulasiRow(semester: "Semester 4", hours: "10 Jam"),
            AkumulasiRow(semester: "Semester 5", hours: "12 Jam"),
            AkumulasiRow(semester: "Semester 6", hours: "6 Jam"),
            AkumulasiRow(semester: "Semester 7", hours: "2 Jam"),
            // Tambahkan row lainnya
            SizedBox(height: 10),
            Divider(),
            Text("Total Alpha = 100 Jam"),
          ],
        ),
      ),
    );
  }
}

class AkumulasiRow extends StatelessWidget {
  final String semester;
  final String hours;

  AkumulasiRow({required this.semester, required this.hours});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(semester),
          Text(hours),
        ],
      ),
    );
  }
}
