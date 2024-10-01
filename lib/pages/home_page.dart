import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'akumulasi_page.dart'; // Impor AkumulasiPage
import 'kompen_card.dart'; // Impor KompenCard

class HomePage extends StatelessWidget {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hasan",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text("2241760069"),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    // Aksi Kompen
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                  ),
                  child: Text("Yuk Kompen!"),
                ),
              ],
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          AkumulasiPage()), // AkumulasiPage sudah diimpor
                );
              },
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("1000 Jam", style: TextStyle(fontSize: 18)),
                        Text("Alpha"),
                      ],
                    ),
                    Row(
                      children: [
                        Text("+2 Jam", style: TextStyle(color: Colors.green)),
                        SizedBox(width: 10),
                        Text("-5 Jam", style: TextStyle(color: Colors.red)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Text("Rekomendasi Kompen", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            KompenCard(
                // Gunakan KompenCard yang sudah diimpor
                title: "Arsip Absensi",
                hours: "-14 Jam",
                color: const Color.fromARGB(255, 255, 255, 255)!),
            KompenCard(
                // Gunakan KompenCard yang sudah diimpor
                title: "Rekap Nilai",
                hours: "-10 Jam",
                color: const Color.fromARGB(255, 255, 255, 255)!),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        color: Colors.indigo[900], // Dark blue bottom bar
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.home, color: Colors.white, size: 30),
                onPressed: () {
                  // Navigate to home
                },
              ),
              IconButton(
                icon: Icon(Icons.access_time, color: Colors.white, size: 30),
                onPressed: () {
                  // Navigate to time page
                },
              ),
              SizedBox(width: 50), // Space for the FAB
              IconButton(
                icon: Icon(Icons.mail, color: Colors.white, size: 30),
                onPressed: () {
                  // Navigate to mail page
                },
              ),
              IconButton(
                icon: Icon(Icons.person, color: Colors.white, size: 30),
                onPressed: () {
                  // Navigate to profile page
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        width: 90, // Bigger size for the FAB
        height: 90,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blueAccent, // Bright blue color
        ),
        child: FloatingActionButton(
          elevation: 0, // No shadow
          backgroundColor: Colors.transparent, // Transparent to avoid stacking
          onPressed: () {
            // Action when FAB is pressed
          },
          child: Icon(
            Icons.add,
            size: 50, // Larger "+" icon
            color: Colors.white, // White color for contrast
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
