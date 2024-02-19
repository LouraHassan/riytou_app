import 'package:flutter/material.dart';
import 'package:riytou_app/mainpagesAR/crplan_ar.dart';
import 'package:riytou_app/mainpagesAR/essentials_ar.dart';
import 'package:riytou_app/mainpagesAR/explore_ar.dart';
import 'package:riytou_app/mainpagesAR/profile_ar.dart';

class HomePageAR extends StatefulWidget {
  const HomePageAR({super.key});

  @override
  State<HomePageAR> createState() => _HomePageARState();
}

class _HomePageARState extends State<HomePageAR> {
  int _currentIndex = 1;
  final List<Widget> _pages = [
    const EssentialsPageAR(),
    const ExplorePAgeAR(),
    const CreatePlanPageAR(),
    const ProfilePageAR(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(
            color: Color.fromRGBO(40, 87, 69, 1),
            fontSize: 16,
            fontWeight: FontWeight.bold),
        fixedColor: const Color.fromRGBO(40, 87, 69, 1),
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.design_services_rounded,
              color: Color.fromRGBO(40, 87, 69, 1),
              size: 40,
            ),
            label: "الخدمات",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_rounded,
              color: Color.fromRGBO(40, 87, 69, 1),
              size: 40,
            ),
            label: 'استكشف',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.date_range_rounded,
              color: Color.fromRGBO(40, 87, 69, 1),
              size: 40,
            ),
            label: 'الجدول',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_rounded,
              color: Color.fromRGBO(40, 87, 69, 1),
              size: 40,
            ),
            label: 'حسابي',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
