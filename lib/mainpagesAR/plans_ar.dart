import 'package:flutter/material.dart';
import 'package:riytou_app/mainpagesAR/placespages/activity_ar.dart';
import 'package:riytou_app/mainpagesAR/placespages/restaurant_ar.dart';
import 'package:riytou_app/mainpagesEN/placespages/restaurant.dart';

import '../widgets/list_item.dart';

class Plan1AR extends StatelessWidget {
  Plan1AR({super.key});
  final List _activity = [
    'الفطور',
    'الفعالية الأولى',
    'الغداء',
    'الفعالية الثانية',
    'العشاء'
  ];
  final List _place = [
    'شابتر',
    'دوس كارتينق',
    'سيكشن بي',
    'بوليفارد رياض سيتي',
    'ببلك'
  ];
  final List _page = [
    const ChapterAR(),
    const DoosKartingAR(),
    const SectionBAR(),
    const BlvdCityAR(),
    const PublicAR()
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
          "اليوم الأول",
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
          itemCount: _activity.length,
          itemBuilder: (context, index) {
            return SchedulePageAR(
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
          "أو اصنع خطتك",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class Plan2AR extends StatelessWidget {
  Plan2AR({super.key});

  final List _activity = [
    'الفطور',
    'الفعالية الأولى',
    'الغداء',
    'الفعالية الثانية',
    'العشاء'
  ];
  final List _place = [
    'ماما نورة',
    'حديقة حيوان الرياض',
    'البيك',
    "مركز المعيقلية التجاري",
    'الرومانسية'
  ];
  final List _page = [
    const MamaNouraAR(),
    const RiyadhZooAR(),
    const AlbaikAR(),
    const AlmaigliahAR(),
    const AlromansiahAR()
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
          "اليوم الثاني",
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
          itemCount: _activity.length,
          itemBuilder: (context, index) {
            return SchedulePageAR(
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
          "أو اصنع خطتك",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class Plan3AR extends StatelessWidget {
  Plan3AR({super.key});

  final List _activity = [
    'الفعالية الأولى',
    'الغداء',
    'الفعالية الثانية',
    'العشاء'
        'الفعالية الثالثة',
  ];
  final List _place = ['البجيري', 'فيلا ماماز', 'مسجد الدواسر', "تكية", 'طريف'];
  final List _page = [
    const AlbujiriAR(),
    const VillaMamasAR(),
    const AlDawasirMosqueAR(),
    const TakyaAR(),
    const AlturaifAR()
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
          "اليوم الثالث",
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
          itemCount: _activity.length,
          itemBuilder: (context, index) {
            return SchedulePageAR(
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
          "أو اصنع خطتك",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class Plan4AR extends StatelessWidget {
  Plan4AR({super.key});

  final List _activity = [
    'الفطور',
    'الفعالية الأولى',
    'الغداء',
    'الفعالية الثانية',
    'العشاء'
  ];
  final List _place = [
    'بي كي بوتيك',
    'المتحف الوطني السعودي',
    'تميسة',
    "قصر المربع",
    'القرية النجدية'
  ];
  final List _page = [
    const BKBoutiqueAR(),
    const NationalMuseumAR(),
    const TameesaAR(),
    const AlmurabaaAR(),
    const NajdVillageAR()
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
          "اليوم الرابع",
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
          itemCount: _activity.length,
          itemBuilder: (context, index) {
            return SchedulePageAR(
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
          "أو اصنع خطتك",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class Plan5AR extends StatelessWidget {
  Plan5AR({super.key});

  final List _activity = [
    'الفطور',
    'الفعالية الأولى',
    'الغداء',
    'الفعالية الثانية',
    'العشاء'
  ];
  final List _place = [
    'وايت قاردن',
    'واجهة روشن',
    'واقيو',
    "بارك افينيو",
    'بريقو '
  ];
  final List _page = [
    const WhiteGardenAR(),
    const RiyadhFrontAR(),
    const WagyuAR(),
    const ParkAvenueAR(),
    const NajdVillageAR(),
    const PergoAR()
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
          "اليوم الخامس",
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
          itemCount: _activity.length,
          itemBuilder: (context, index) {
            return SchedulePageAR(
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
          "أو اصنع خطتك",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class Plan6AR extends StatelessWidget {
  Plan6AR({super.key});

  final List _activity = [
    'الفطور',
    'الفعالية الأولى',
    'الغداء',
    'الفعالية الثانية',
    'العشاء'
  ];
  final List _place = [
    'تسوالو',
    'منتجع نوفا',
    'الفريسكو',
    "الحياة البرية في نوفا",
    'ذا باتشرز دن'
  ];
  final List _page = [
    const NofaResortAR(),
    const TswaluAR(),
    const Wagyu(),
    const NofaResortAR(),
    const TheButcherAR()
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
          "اليوم السادس",
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
          itemCount: _activity.length,
          itemBuilder: (context, index) {
            return SchedulePageAR(
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
          "أو اصنع خطتك",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class Plan7AR extends StatelessWidget {
  Plan7AR({super.key});

  final List _activity = [
    'الفطور',
    'الفعالية الأولى',
    'الغداء',
    'الفعالية الثانية',
    'العشاء'
  ];
  final List _place = [
    'بول',
    'العثيم مول',
    'ماكدونالدز',
    "تشيكي تشيز",
    'تشيكي تشيز'
  ];
  final List _page = [
    const PaulAR(),
    const AlothaimMallAR(),
    const McDonaldsAR(),
    const ChuckeCheeseAR(),
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
          "اليوم السابع",
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
          itemCount: _activity.length,
          itemBuilder: (context, index) {
            return SchedulePageAR(
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
          "أو اصنع خطتك",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
