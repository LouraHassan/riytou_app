import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riytou_app/mainpagesEN/login_page.dart';

import 'signup_page.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(40, 87, 69, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              size: 35,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: 550,
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
            child: Column(children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'images/gplogo.jpg',
                height: 250,
              ),
              const Text(
                'WELCOME',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 50,
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
                    MaterialPageRoute(builder: (context) => const LoginPage()),
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpPage()));
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
                      'Signup',
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
        ),
      ),
    );
  }
}
