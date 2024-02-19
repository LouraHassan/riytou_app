import 'package:flutter/material.dart';
import 'package:riytou_app/servicespagesEN/services.dart';

class EssentialsPage extends StatefulWidget {
  const EssentialsPage({super.key});

  @override
  State<EssentialsPage> createState() => _EssentialsPageState();
}

class _EssentialsPageState extends State<EssentialsPage> {
  PopupMenuItem _buildPopupMenuItem(String title) {
    return PopupMenuItem(
      child: Text(title),
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
    const HotelsList(),
    const TransportList(),
    const HospitalsList(),
    const CarRentalList(),
    const PharmaciesList(),
    const DeliveryList(),
    const LaundryList(),
    const EmergencyContacts(),
  ];

  final List<String> _name = [
    "Hotels",
    "Transportation",
    "Hospitals",
    "Car Rental",
    "Pharmacies",
    "Delivery",
    "Laundry",
    "Emergency \n  Contacts",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Services",
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
