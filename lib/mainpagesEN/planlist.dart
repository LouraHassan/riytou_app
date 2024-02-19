import 'package:flutter/material.dart';
import 'package:riytou_app/widgets/list_item.dart';
import 'package:riytou_app/mainpagesEN/plans.dart';

import '../mainpagesAR/plans_ar.dart';

class PlanList extends StatelessWidget {
  PlanList({super.key});

  final List _page = [Plan1(), Plan2(), Plan3(), Plan4(), Plan5(), Plan6()];
  final List _title = ["Day 1", "Day 2", "Day 3", "Day 4", "Day 5", "Day 6"];
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
            "Your Trip",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 35,
                  color: Colors.white,
                )),
          )),
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

class PlanListAR extends StatelessWidget {
  PlanListAR({super.key});

  final List _page = [
    Plan1AR(),
    Plan2AR(),
    Plan3AR(),
    Plan4AR(),
    Plan5AR(),
    Plan6AR()
  ];
  final List _title = [
    "اليوم الأول",
    "اليوم الثاني",
    "اليوم الثالث",
    "اليوم الرابع",
    "اليوم الخامس",
    "اليوم السادس"
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
          "رحلتك",
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

class PlanList1 extends StatelessWidget {
  PlanList1({super.key});

  final List _page = [Plan1()];
  final List _title = ["Day 1"];
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
            "Your Trip",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 35,
                  color: Colors.white,
                )),
          )),
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

class PlanList1AR extends StatelessWidget {
  PlanList1AR({super.key});

  final List _page = [
    Plan1AR(),
  ];
  final List _title = [
    "اليوم الأول",
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
          "رحلتك",
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

class PlanList2 extends StatelessWidget {
  PlanList2({super.key});

  final List _page = [Plan1(), Plan2()];
  final List _title = ["Day 1", "Day 2"];
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
            "Your Trip",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 35,
                  color: Colors.white,
                )),
          )),
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

class PlanList2AR extends StatelessWidget {
  PlanList2AR({super.key});

  final List _page = [
    Plan1AR(),
    Plan2AR(),
  ];
  final List _title = [
    "اليوم الأول",
    "اليوم الثاني",
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
          "رحلتك",
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

class PlanList3 extends StatelessWidget {
  PlanList3({super.key});

  final List _page = [Plan1(), Plan2(), Plan3()];
  final List _title = ["Day 1", "Day 2", "Day 3"];
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
            "Your Trip",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 35,
                  color: Colors.white,
                )),
          )),
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

class PlanList3AR extends StatelessWidget {
  PlanList3AR({super.key});

  final List _page = [
    Plan1AR(),
    Plan2AR(),
    Plan3AR(),
  ];
  final List _title = [
    "اليوم الأول",
    "اليوم الثاني",
    "اليوم الثالث",
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
          "رحلتك",
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

class PlanList4 extends StatelessWidget {
  PlanList4({super.key});

  final List _page = [Plan1(), Plan2(), Plan3(), Plan4()];
  final List _title = ["Day 1", "Day 2", "Day 3", "Day 4"];
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
            "Your Trip",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 35,
                  color: Colors.white,
                )),
          )),
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

class PlanList4AR extends StatelessWidget {
  PlanList4AR({super.key});

  final List _page = [
    Plan1AR(),
    Plan2AR(),
    Plan3AR(),
    Plan4AR(),
  ];
  final List _title = [
    "اليوم الأول",
    "اليوم الثاني",
    "اليوم الثالث",
    "اليوم الرابع",
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
          "رحلتك",
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

class PlanList5 extends StatelessWidget {
  PlanList5({super.key});

  final List _page = [Plan1(), Plan2(), Plan3(), Plan4(), Plan5()];
  final List _title = ["Day 1", "Day 2", "Day 3", "Day 4", "Day 5"];
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
            "Your Trip",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 35,
                  color: Colors.white,
                )),
          )),
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

class PlanList5AR extends StatelessWidget {
  PlanList5AR({super.key});

  final List _page = [Plan1AR(), Plan2AR(), Plan3AR(), Plan4AR(), Plan5AR()];
  final List _title = [
    "اليوم الأول",
    "اليوم الثاني",
    "اليوم الثالث",
    "اليوم الرابع",
    "اليوم الخامس"
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
          "رحلتك",
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

class PlanList6 extends StatelessWidget {
  PlanList6({super.key});

  final List _page = [Plan1(), Plan2(), Plan3(), Plan4(), Plan5(), Plan6()];
  final List _title = ["Day 1", "Day 2", "Day 3", "Day 4", "Day 5", "Day 6"];
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
            "Your Trip",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 35,
                  color: Colors.white,
                )),
          )),
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

class PlanList6AR extends StatelessWidget {
  PlanList6AR({super.key});

  final List _page = [
    Plan1AR(),
    Plan2AR(),
    Plan3AR(),
    Plan4AR(),
    Plan5AR(),
    Plan6AR()
  ];
  final List _title = [
    "اليوم الأول",
    "اليوم الثاني",
    "اليوم الثالث",
    "اليوم الرابع",
    "اليوم الخامس",
    "اليوم السادس"
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
          "رحلتك",
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

class PlanList7 extends StatelessWidget {
  PlanList7({super.key});

  final List _page = [
    Plan1(),
    Plan2(),
    Plan3(),
    Plan4(),
    Plan5(),
    Plan6(),
    Plan7()
  ];
  final List _title = [
    "Day 1",
    "Day 2",
    "Day 3",
    "Day 4",
    "Day 5",
    "Day 6",
    "Day7"
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
            "Your Trip",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 35,
                  color: Colors.white,
                )),
          )),
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

class PlanList7AR extends StatelessWidget {
  PlanList7AR({super.key});

  final List _page = [
    Plan1AR(),
    Plan2AR(),
    Plan3AR(),
    Plan4AR(),
    Plan5AR(),
    Plan6AR(),
    Plan7AR()
  ];
  final List _title = [
    "اليوم الأول",
    "اليوم الثاني",
    "اليوم الثالث",
    "اليوم الرابع",
    "اليوم الخامس",
    "اليوم السادس",
    "اليوم السابع"
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
          "رحلتك",
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
