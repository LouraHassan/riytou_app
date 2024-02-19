import 'package:flutter/material.dart';
import 'package:riytou_app/mainpagesEN/placespages/activity.dart';
import 'package:riytou_app/mainpagesEN/placespages/restaurant.dart';

import '../widgets/list_item.dart';

class Plan1 extends StatelessWidget {
  Plan1({super.key});
  final List _activity = [
    'Breakfast',
    'First Activity',
    'Lunch',
    'Second Activity',
    'Dinner'
  ];
  final List _place = [
    'Chapter',
    'Doos Karting',
    'Section B',
    'Boulevard Riyadh City',
    'Public'
  ];
  final List _page = [
    const Chapter(),
    const DoosKarting(),
    const SectionB(),
    const BlvdCity(),
    const Public()
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
          "Day 1",
          style: TextStyle(fontSize: 30, color: Colors.white),
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
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: _activity.length,
          itemBuilder: (context, index) {
            return SchedulePage(
              activity: _activity[index],
              page: _page[index],
              place: _place[index],
            );
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.amber,
        icon: const Icon(
          Icons.add,
          size: 35,
        ),
        label: const Text(
          "Or Create you own plan",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class Plan2 extends StatelessWidget {
  Plan2({super.key});

  final List _activity = [
    'First Activity',
    'Lunch',
    'Second Activity',
    'Dinner'
        'Third Activity',
  ];
  final List _place = [
    'Albujiri',
    'Villa Mamas',
    'Al Dawasir Mosque',
    "Takya",
    'Al Turaif'
  ];
  final List _page = [
    const Albujiri(),
    const VillaMamas(),
    const AlDawasirMosque(),
    const Takya(),
    const Alturaif()
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
          "Day 2",
          style: TextStyle(fontSize: 30, color: Colors.white),
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
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: _activity.length,
          itemBuilder: (context, index) {
            return SchedulePage(
              activity: _activity[index],
              page: _page[index],
              place: _place[index],
            );
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.amber,
        icon: const Icon(
          Icons.add,
          size: 35,
        ),
        label: const Text(
          "Or Create you own plan",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class Plan3 extends StatelessWidget {
  Plan3({super.key});

  final List _activity = [
    'Breakfast',
    'First Activity',
    'Lunch',
    'Second Activity',
    'Dinner'
  ];
  final List _place = [
    'Mama Noura',
    'Riyadh Zoo',
    'Al Baik',
    "Al Maigliah Market Centre",
    'Al Romansiah'
  ];
  final List _page = [
    const MamaNoura(),
    const RiyadhZoo(),
    const Albaik(),
    const Almaigliah(),
    const Alromansiah()
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
          "Day 3",
          style: TextStyle(fontSize: 30, color: Colors.white),
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
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: _activity.length,
          itemBuilder: (context, index) {
            return SchedulePage(
              activity: _activity[index],
              page: _page[index],
              place: _place[index],
            );
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.amber,
        icon: const Icon(
          Icons.add,
          size: 35,
        ),
        label: const Text(
          "Or Create you own plan",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class Plan4 extends StatelessWidget {
  Plan4({super.key});

  final List _activity = [
    'Breakfast',
    'First Activity',
    'Lunch',
    'Second Activity',
    'Dinner'
  ];
  final List _place = [
    'Tameesa',
    'The National Museum',
    'BK Boutique',
    "Al-Murabaa Palace",
    'Najd Village'
  ];
  final List _page = [
    const Tameesa(),
    const NationalMuseum(),
    const BKBoutique(),
    const Almurabaa(),
    const NajdVillage()
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
          "Day 4",
          style: TextStyle(fontSize: 30, color: Colors.white),
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
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: _activity.length,
          itemBuilder: (context, index) {
            return SchedulePage(
              activity: _activity[index],
              page: _page[index],
              place: _place[index],
            );
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.amber,
        icon: const Icon(
          Icons.add,
          size: 35,
        ),
        label: const Text(
          "Or Create you own plan",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class Plan5 extends StatelessWidget {
  Plan5({super.key});

  final List _activity = [
    'Breakfast',
    'First Activity',
    'Lunch',
    'Second Activity',
    'Dinner'
  ];
  final List _place = [
    'White Garden',
    'Roshen Front',
    'Wagyu',
    "Park Avenue",
    'Prego'
  ];
  final List _page = [
    const WhiteGarden(),
    const RiyadhFront(),
    const Wagyu(),
    const ParkAvenue(),
    const NajdVillage(),
    const Pergo()
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
          "Day 5",
          style: TextStyle(fontSize: 30, color: Colors.white),
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
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: _activity.length,
          itemBuilder: (context, index) {
            return SchedulePage(
              activity: _activity[index],
              page: _page[index],
              place: _place[index],
            );
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.amber,
        icon: const Icon(
          Icons.add,
          size: 35,
        ),
        label: const Text(
          "Or Create you own plan",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class Plan6 extends StatelessWidget {
  Plan6({super.key});

  final List _activity = [
    'Breakfast',
    'First Activity',
    'Lunch',
    'Second Activity',
    'Dinner'
  ];
  final List _place = [
    'Tswalu',
    'Nofa Resort',
    'Alfresco',
    "Nofa Wildlife Park",
    "The Butcher's Den"
  ];
  final List _page = [
    const Tswalu(),
    const NofaResort(),
    const Alfresco(),
    const NofaResort(),
    const TheButcher()
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
          "Day 6",
          style: TextStyle(fontSize: 30, color: Colors.white),
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
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: _activity.length,
          itemBuilder: (context, index) {
            return SchedulePage(
              activity: _activity[index],
              page: _page[index],
              place: _place[index],
            );
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.amber,
        icon: const Icon(
          Icons.add,
          size: 35,
        ),
        label: const Text(
          "Or Create you own plan",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class Plan7 extends StatelessWidget {
  Plan7({super.key});

  final List _activity = [
    'Breakfast',
    'First Activity',
    'Lunch',
    'Second Activity',
    'Dinner'
  ];
  final List _place = [
    'Paul',
    'Al Othaim Mall',
    "Mcdonald's",
    "Chuck E Cheese",
    "Chuck E Cheese",
  ];
  final List _page = [
    const Paul(),
    const AlothaimMall(),
    const McDonalds(),
    const ChuckeCheese(),
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
          "Day 7",
          style: TextStyle(fontSize: 30, color: Colors.white),
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
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: _activity.length,
          itemBuilder: (context, index) {
            return SchedulePage(
              activity: _activity[index],
              page: _page[index],
              place: _place[index],
            );
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.amber,
        icon: const Icon(
          Icons.add,
          size: 35,
        ),
        label: const Text(
          "Or Create you own plan",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
