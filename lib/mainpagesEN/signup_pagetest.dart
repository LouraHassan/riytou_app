import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riytou_app/mainpagesEN/login_page2test.dart';

import 'home_page.dart';

class SignUpPageTest extends StatefulWidget {
  const SignUpPageTest({super.key});

  @override
  _SignUpPageTestState createState() => _SignUpPageTestState();
}

class _SignUpPageTestState extends State<SignUpPageTest> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  String _username = '';
  String _email = '';
  String _password = '';
  String _confirmPassword = '';

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Perform signup logic here
      // For simplicity, we'll just print the input values
      print('Username: $_username');
      print('Email: $_email');
      print('Password: $_password');
      print('Confirm Password: $_confirmPassword');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Create Account",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.w700),
        ),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              size: 35,
              color: Color.fromRGBO(40, 87, 69, 1),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Image(
                image: AssetImage('images/gplogo.jpg'),
                height: 200,
              ),
              const SizedBox(height: 10),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildIconTextField(
                      labelText: 'Username',
                      icon: Icons.person,
                      onChanged: (value) {
                        setState(() {
                          _username = value;
                        });
                      },
                    ),
                    const SizedBox(height: 16.0),
                    _buildIconTextField(
                      labelText: 'Email',
                      icon: Icons.email,
                      onChanged: (value) {
                        setState(() {
                          _email = value;
                        });
                      },
                    ),
                    const SizedBox(height: 16.0),
                    _buildIconTextField(
                      labelText: 'Password',
                      icon: Icons.lock,
                      obscureText: true,
                      controller: _passwordController,
                      onChanged: (value) {
                        setState(() {
                          _password = value;
                        });
                      },
                    ),
                    const SizedBox(height: 16.0),
                    _buildIconTextField(
                      labelText: 'Confirm Password',
                      icon: Icons.lock,
                      obscureText: true,
                      controller: _confirmPasswordController,
                      onChanged: (value) {
                        setState(() {
                          _confirmPassword = value;
                        });
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
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
                            'Sign Up',
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
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage2()));
                },
                child: const Text(
                  'Already have an account? Sign in',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 8, 8, 8),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconTextField({
    required String labelText,
    required IconData icon,
    bool obscureText = false,
    TextEditingController? controller,
    required Function(String) onChanged,
  }) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(icon),
      ),
      obscureText: obscureText,
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter a $labelText';
        }
        return null;
      },
      onChanged: onChanged,
    );
  }
}
