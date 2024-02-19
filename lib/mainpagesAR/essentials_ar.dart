import 'package:flutter/material.dart';
import 'package:riytou_app/mainpagesEN/explore.dart';
import 'package:riytou_app/mainpagesEN/home_page.dart';

import '../servicespagesEN/services.dart';

class EssentialsPageAR extends StatefulWidget {
  const EssentialsPageAR({super.key});

  @override
  State<EssentialsPageAR> createState() => _EssentialsPageARState();
}

class _EssentialsPageARState extends State<EssentialsPageAR> {
  PopupMenuItem _buildPopupMenuItem(String title) {
    return PopupMenuItem(
      child: Text(title),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ExplorePage()));
      },
    );
  }

  final List<IconData> _icons = [
    Icons.hotel,
    Icons.local_taxi,
    Icons.local_hospital_rounded,
    Icons.directions_car_filled_rounded,
    Icons.local_pharmacy_rounded,
    Icons.delivery_dining_rounded,
    Icons.local_laundry_service_rounded,
    Icons.emergency_rounded,
  ];

  final List<Widget> _pages = [
    const HotelsListAR(),
    const TransportListAR(),
    const HospitalsListAR(),
    const CarRentalAR(),
    const PharmacyListAR(),
    const DeliveryListAR(),
    const LaundryListAR(),
    const EmergencyContactAR(),
  ];

  final List<String> _name = [
    "الفنادق",
    "المواصلات",
    "المستشفيات",
    "نأجير السيارات",
    "الصيدليات",
    "تطبيقات التوصيل",
    "غسيل الملابس",
    "أرقام الطوارئ",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "الخدمات",
            style: TextStyle(
                color: Color.fromRGBO(40, 87, 69, 1),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          iconTheme: const IconThemeData(color: Colors.amber),
          centerTitle: true,
          leading: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Icon(
              Icons.support_agent_rounded,
              size: 35,
              color: Colors.amber,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: InkWell(
                child: const Icon(
                  Icons.language,
                  size: 35,
                  color: Colors.amber,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: _name.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      right: 10, left: 20, top: 10, bottom: 15),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => _pages[index]));
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: const Color.fromRGBO(73, 158, 88, 1),
                              width: 3)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            _icons[index],
                            size: 46,
                            color: const Color.fromRGBO(73, 158, 88, 1),
                          ),
                          Text(
                            _name[index],
                            style: const TextStyle(
                                fontSize: 18,
                                color: Color.fromRGBO(73, 158, 88, 1),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ));
  }
}
