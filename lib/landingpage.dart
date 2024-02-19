import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riytou_app/mainpagesAR/page1_ar.dart';
import 'package:riytou_app/mainpagesEN/page1.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(40, 87, 69, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 600,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black45,
                        blurRadius: 3,
                        offset: Offset(0, 2))
                  ]),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Image.asset(
                      'images/gplogo.jpg',
                      height: 250,
                    ),
                    const Text(
                      'Choose a language',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                          color: Color.fromRGBO(40, 87, 69, 1),
                          shadows: [
                            Shadow(
                                color: Colors.black38,
                                offset: Offset(0, 3),
                                blurRadius: 15)
                          ]),
                    ),
                    const Text(
                      'اختر اللغة',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 35,
                          color: Color.fromRGBO(40, 87, 69, 1),
                          shadows: [
                            Shadow(
                                color: Colors.black38,
                                offset: Offset(0, 3),
                                blurRadius: 15)
                          ]),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Page1()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 10),
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
                            'English',
                            style: GoogleFonts.balooTamma(
                                fontSize: 28,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Page1AR()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 10),
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
                            'العربية',
                            style: GoogleFonts.balooTamma(
                                fontSize: 28,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )),
                        ),
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
