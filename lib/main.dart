import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Suka Kompen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  final TextEditingController nimController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Suka Kompen.",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[900],
                  ),
                ),
              ),
              SizedBox(height: 30),
              TextField(
                controller: nimController,
                decoration: InputDecoration(
                  labelText: "NIM/NIP",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[900],
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
                  MaterialPageRoute(builder: (context) => AkumulasiPage()),
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
                title: "Arsip Absensi",
                hours: "-14 Jam",
                color: Colors.blue[100]!),
            KompenCard(
                title: "Rekap Nilai",
                hours: "-10 Jam",
                color: Colors.red[100]!),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
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
            AkumulasiRow(semester: "Semester 2", hours: "12 Jam"),
            AkumulasiRow(semester: "Semester 3", hours: "12 Jam"),
            AkumulasiRow(semester: "Semester 4", hours: "12 Jam"),
            AkumulasiRow(semester: "Semester 5", hours: "12 Jam"),
            AkumulasiRow(semester: "Semester 6", hours: "12 Jam"),
            AkumulasiRow(semester: "Semester 7", hours: "12 Jam"),
            AkumulasiRow(semester: "Semester 8", hours: "12 Jam"),
            SizedBox(height: 10),
            Divider(),
            Text("Total Alpha = 100 Jam"),
          ],
        ),
      ),
    );
  }
}

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
