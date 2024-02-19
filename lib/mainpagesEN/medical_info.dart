import 'package:flutter/material.dart';

class MedicalInfoPage extends StatefulWidget {
  const MedicalInfoPage({super.key});

  @override
  State<MedicalInfoPage> createState() => _MedicalInfoPageState();
}

class _MedicalInfoPageState extends State<MedicalInfoPage> {
  String bloodType = "";
  String height = "";
  String weight = "";
  String dateOfBirth = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Medical Information',
            style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Icon(
                Icons.local_hospital,
                size: 100,
                color: Colors.green,
              ),
            ),
            const Text(
              'Medical Information',
              style: TextStyle(fontSize: 20, color: Colors.black54),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: 'Blood Type',
                  prefixIcon: Icon(Icons.opacity, color: Colors.grey),
                ),
                onChanged: (value) {
                  setState(() {
                    bloodType = value;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: 'Height',
                  prefixIcon: Icon(Icons.height, color: Colors.grey),
                ),
                onChanged: (value) {
                  setState(() {
                    height = value;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: 'Weight',
                  prefixIcon: Icon(Icons.fitness_center, color: Colors.grey),
                ),
                onChanged: (value) {
                  setState(() {
                    weight = value;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: 'Date of Birth',
                  prefixIcon: Icon(Icons.cake, color: Colors.grey),
                ),
                onChanged: (value) {
                  setState(() {
                    dateOfBirth = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
