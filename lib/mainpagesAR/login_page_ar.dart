import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riytou_app/mainpagesAR/home_page_ar.dart';

class LoginPageAR extends StatefulWidget {
  const LoginPageAR({super.key});

  @override
  State<LoginPageAR> createState() => _LoginPageARState();
}

class _LoginPageARState extends State<LoginPageAR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 40,
                color: Color.fromRGBO(40, 87, 69, 1),
              ),
            ),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'images/gplogo.jpg',
                  height: 280,
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 45),
                      child: Text(
                        'البريد الإلكتروني',
                        style: TextStyle(
                            fontSize: 22,
                            color: Color.fromRGBO(40, 87, 69, 1),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(40, 87, 69, 1),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        prefixIcon: const Icon(
                          Icons.mail,
                          color: Color.fromRGBO(253, 198, 81, 0.8),
                        )),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 45),
                      child: Text(
                        'كلمة المرور',
                        style: TextStyle(
                            fontSize: 22,
                            color: Color.fromRGBO(40, 87, 69, 1),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(40, 87, 69, 1),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Color.fromRGBO(253, 198, 81, 0.8),
                        )),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 160, 25),
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      "نسيت كلمة المرور؟",
                      style: GoogleFonts.acme(
                          color: const Color.fromRGBO(40, 87, 69, 0.8),
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePageAR()),
                    );
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 2),
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
                const SizedBox(
                  height: 80,
                )
              ],
            ),
          ),
        ));
  }
}
