import 'package:flutter/material.dart';

class LoginPage2 extends StatefulWidget {
  const LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  String _email = '';
  String _password = '';

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Perform signup logic here
      // For simplicity, we'll just print the input values
      print('Email: $_email');
      print('Password: $_password');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riyadh Tours'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Image(
                image: AssetImage('images/riyadh_tours_logo.jpg'),
                height: 150,
              ),
              const SizedBox(height: 16.0),
              const Center(
                child: Text(
                  'login',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Courier',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    Center(
                      child: SizedBox(
                        width: 120,
                        height: 60.0,
                        child: ElevatedButton(
                          onPressed: _submitForm,
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            alignment: Alignment.center,
                            child: const Text(
                              'login',
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  // Navigate to the sign-in page
                  // You can implement the navigation logic here
                },
                child: const Text(
                  'Already have an account? Sign in',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 8, 8, 8),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
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
