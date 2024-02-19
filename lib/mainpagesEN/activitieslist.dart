import 'package:flutter/material.dart';
import 'package:riytou_app/widgets/list_item.dart';
import 'package:riytou_app/mainpagesAR/placespages/activity_ar.dart';
import 'package:riytou_app/mainpagesEN/placespages/activity.dart';

class ActivitiesList extends StatefulWidget {
  const ActivitiesList({super.key});

  @override
  State<ActivitiesList> createState() => _ActivitiesListState();
}

class _ActivitiesListState extends State<ActivitiesList> {
  final List _title = [
    "The National Museum",
    "Al-Murabaa Palace",
    "Roshen Front",
    "Park Avenue",
    "Riyadh Zoo",
    "Al Maigliah Marker Centre",
    "Doos Karting",
    "Boulevard Riyadh City",
    "Nofa Resort",
    "Al Bujairi",
    "Aldawsar Mosque",
    "AL Turaif",
    "AlOthaim Mall",
    'Chuck E. Cheese'
  ];

  final List _page = [
    const NationalMuseum(),
    const Almurabaa(),
    const RiyadhFront(),
    const ParkAvenue(),
    const RiyadhZoo(),
    const Almaigliah(),
    const DoosKarting(),
    const BlvdCity(),
    const NofaResort(),
    const Albujiri(),
    const AlDawasirMosque(),
    const Alturaif(),
    const AlothaimMall(),
    const ChuckeCheese()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(40, 87, 69, 1),
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Places",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
      ),
      body: ListView.builder(
          itemCount: _title.length,
          itemBuilder: (context, index) {
            return ListItem(
              page: _page[index],
              title: _title[index],
            );
          }),
    );
  }
}

class ActivitiesListAR extends StatefulWidget {
  const ActivitiesListAR({super.key});

  @override
  State<ActivitiesListAR> createState() => _ActivitiesListARState();
}

class _ActivitiesListARState extends State<ActivitiesListAR> {
  final List _title = [
    "المتحف الوطني السعودي",
    "قصر المربع",
    "واجهة روشن",
    "بارك افينيو",
    "حديقة حيوان الرياض",
    "مركز المعيقلية التجاري",
    "دوس كارتينق",
    "بوليفارد رياض سيتي",
    "منتجع نوفا",
    "البجيري",
    "مسجد الدواسر",
    "طريف",
    "العثيم مول",
    'تشيكي تشيز'
  ];

  final List _page = [
    const NationalMuseumAR(),
    const AlmurabaaAR(),
    const RiyadhFrontAR(),
    const ParkAvenueAR(),
    const RiyadhZooAR(),
    const AlmaigliahAR(),
    const DoosKartingAR(),
    const BlvdCityAR(),
    const NofaResortAR(),
    const AlbujiriAR(),
    const AlDawasirMosqueAR(),
    const AlturaifAR(),
    const AlothaimMallAR(),
    const ChuckeCheeseAR()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(40, 87, 69, 1),
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "المناطق",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 35,
                  color: Colors.white,
                )),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: _title.length,
          itemBuilder: (context, index) {
            return ListItemAR(
              page: _page[index],
              title: _title[index],
            );
          }),
    );
  }
}
