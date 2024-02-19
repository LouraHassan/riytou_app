import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riytou_app/landingpage.dart';
import 'package:riytou_app/mainpagesEN/medical_info.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String firstName = "";
  String lastName = "";
  String healthInfo = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: const Color.fromRGBO(40, 87, 69, 1),
          title: const Text('Account Page',
              style: TextStyle(fontSize: 30, color: Colors.white)),
          centerTitle: true,
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LandingPage()));
                },
                child: const Icon(
                  Icons.exit_to_app_outlined,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ]),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(20.0),
                child: const Icon(
                  Icons.account_circle,
                  size: 100,
                  color: Color.fromRGBO(40, 87, 69, 1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'First Name',
                    prefixIcon: Icon(Icons.person, color: Colors.grey),
                  ),
                  onChanged: (value) {
                    setState(() {
                      firstName = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Last Name',
                    prefixIcon: Icon(Icons.person, color: Colors.grey),
                  ),
                  onChanged: (value) {
                    setState(() {
                      lastName = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Medical information',
                    prefixIcon:
                        Icon(Icons.health_and_safety, color: Colors.grey),
                  ),
                  onChanged: (value) {
                    setState(() {
                      healthInfo = value;
                    });
                  },
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MedicalInfoPage()),
                  );
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(253, 198, 81, 1),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 2),
                              blurRadius: 8)
                        ]),
                    child: Center(
                        child: Text(
                      'Login',
                      style: GoogleFonts.balooTamma(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
