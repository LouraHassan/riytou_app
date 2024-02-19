import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riytou_app/mainpagesEN/home_page.dart';
import 'package:riytou_app/mainpagesEN/signup_page.dart';
import 'package:riytou_app/widgets/form_container_widget.dart';

import 'page1.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Login",
            style: TextStyle(
                fontSize: 30,
                color: Color.fromRGBO(40, 87, 69, 1),
                fontWeight: FontWeight.w500),
          ),
          leading: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Page1()));
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Image.asset(
                    'images/gplogo.jpg',
                    height: 200,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const FormContainerWidget(
                    hintText: "Email",
                    icon: Icon(Icons.mail),
                    isPasswordField: false,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const FormContainerWidget(
                    hintText: "Password",
                    icon: Icon(Icons.lock),
                    isPasswordField: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(253, 198, 81, 1),
                          borderRadius: BorderRadius.circular(20),
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
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?  ",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpPage()));
                        },
                        child: const Text(
                          "Sign up",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(40, 87, 69, 1),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
