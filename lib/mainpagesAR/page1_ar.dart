import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riytou_app/mainpagesAR/login_page_ar.dart';

class Page1AR extends StatefulWidget {
  const Page1AR({super.key});

  @override
  State<Page1AR> createState() => _Page1ARState();
}

class _Page1ARState extends State<Page1AR> {
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
          child: Column(
            children: [
              const SizedBox(
                height: 6,
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
                child: Column(children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Image.asset(
                    'images/gplogo.jpg',
                    height: 250,
                  ),
                  const Text(
                    'مرحباً',
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
                    height: 2,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPageAR()),
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
                          'تسجيل الدخول',
                          style: GoogleFonts.balooTamma(
                              fontSize: 28,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        )),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
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
                          'تسجيل',
                          style: GoogleFonts.balooTamma(
                              fontSize: 28,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        )),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 10),
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromRGBO(253, 198, 81, 1),
                                width: 3),
                            color: const Color.fromRGBO(250, 250, 250, 1),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0, 2),
                                  blurRadius: 8)
                            ]),
                        child: Center(
                            child: Text(
                          'المتابعة كضيف',
                          style: GoogleFonts.balooTamma(
                              fontSize: 24,
                              color: const Color.fromRGBO(253, 198, 81, 1),
                              fontWeight: FontWeight.w500),
                        )),
                      ),
                    ),
                  ),
                ]),
              ),
              const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
