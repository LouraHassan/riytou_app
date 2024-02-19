import 'package:flutter/material.dart';

class ProfilePageAR extends StatefulWidget {
  const ProfilePageAR({super.key});

  @override
  State<ProfilePageAR> createState() => _ProfilePageARState();
}

class _ProfilePageARState extends State<ProfilePageAR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text(
            "حسابي",
            style: TextStyle(fontSize: 28),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.exit_to_app,
                  color: Colors.white,
                ))
          ]),
    );
  }
}
