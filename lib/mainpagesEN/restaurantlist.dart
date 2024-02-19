import 'package:flutter/material.dart';
import 'package:riytou_app/mainpagesAR/placespages/restaurant_ar.dart';
import 'package:riytou_app/mainpagesEN/placespages/restaurant.dart';

import '../widgets/list_item.dart';

class RestaurantList extends StatefulWidget {
  const RestaurantList({super.key});

  @override
  State<RestaurantList> createState() => _RestaurantListState();
}

class _RestaurantListState extends State<RestaurantList> {
  final List _title = [
    'Tameesa',
    'Najd Village',
    'White Garden',
    'Wagyu',
    'Mama Noura',
    'Al-Baik',
    'Al Romansiah',
    'Chapter',
    'Section B',
    'Public',
    'Takya',
    'Al Fresco',
    "The Butcher's Den",
    'Villa Mamas',
    'Tswalu',
    "BK Boutique",
    'Prego',
    'Paul'
  ];

  final List _page = [
    const Tameesa(),
    const NajdVillage(),
    const WhiteGarden(),
    const Wagyu(),
    const MamaNoura(),
    const Albaik(),
    const Alromansiah(),
    const Chapter(),
    const SectionB(),
    const Public(),
    const Takya(),
    const Alfresco(),
    const TheButcher(),
    const VillaMamas(),
    const Tswalu(),
    const BKBoutique(),
    const Pergo(),
    const Paul()
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
          "Restaurants",
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

class RestaurantListAR extends StatefulWidget {
  const RestaurantListAR({super.key});

  @override
  State<RestaurantListAR> createState() => _RestaurantListARState();
}

class _RestaurantListARState extends State<RestaurantListAR> {
  final List _title = [
    'تميسة',
    'القرية النجدية',
    'وايت جاردن',
    'واقيو',
    'ماما نورة',
    'البيك',
    'الرومانسية',
    'شايتر',
    'سكشن بي',
    'ببلك',
    'تكية',
    'الفريسكو',
    "ذا باتشرز دن",
    'فيلا ماماز',
    "تسوالو",
    "بي كي بوتيك",
    'بريقو',
    "بول"
  ];

  final List _page = [
    const TameesaAR(),
    const NajdVillageAR(),
    const WhiteGardenAR(),
    const WagyuAR(),
    const MamaNouraAR(),
    const AlbaikAR(),
    const AlromansiahAR(),
    const ChapterAR(),
    const SectionBAR(),
    const PublicAR(),
    const TakyaAR(),
    const AlfrescoAR(),
    const TheButcherAR(),
    const VillaMamasAR(),
    const TswaluAR(),
    const BKBoutiqueAR(),
    const PergoAR(),
    const PaulAR()
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
          "المطاعم",
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
