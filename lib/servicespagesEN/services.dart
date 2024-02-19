import 'package:flutter/material.dart';

import '../widgets/services_item.dart';

class HospitalsList extends StatefulWidget {
  const HospitalsList({super.key});

  @override
  State<HospitalsList> createState() => _HospitalsListState();
}

class _HospitalsListState extends State<HospitalsList> {
  final List _hospitals = [
    "DR SULAIMAN ALHABIB",
    "SPECIALIZED MEDICAL CENTER",
    "Dallah Hospital",
    "Alhammadi Hospital",
    "Saudi German Hospital",
    "Mouwasat Hospital",
    "Dr Soliman Fakeeh Hospital",
    "Ali Bin Ali Hospital",
    "King Faisal Specialist Hospital ",
  ];

  final List _logo = [
    'https://images.sehaguide.com//logos/34141/12615773_1066547196719971_4279365588429550143_o8ce0980f-7136-4212-943c-cb7a2c39a245.png',
    'https://play-lh.googleusercontent.com/sWqxDn9DoFpTdA1Knf1CejG276G_57zzJygTYJryp8bIRo7yXw-WWyxouy4Vp4suf9U',
    'https://cdn6.aptoide.com/imgs/5/1/c/51cf60a5f6c4612875ea23ad4b8d3efa_icon.jpg',
    'https://media.licdn.com/dms/image/C560BAQGvEo1UbB2asg/company-logo_200_200/0/1519869226496?e=2147483647&v=beta&t=zrEmtDgtbjacEoSknCMDejIteZIdR3BQ4Ra6sqlRuQE',
    'https://play-lh.googleusercontent.com/6ICLpwb6x15vsQpEInyOqn6stk_PcP2vkgTQ87RE_VwG-jb6KeBLXgox1ZMBCErtdsk',
    'https://play-lh.googleusercontent.com/T4U0I9dQfmFpLTVkn7aSXcMeMbpDr32JQtO_qBsSQgjc3lOx5U3Xq0id4WpAYqR1n9Y',
    'https://media.glassdoor.com/sql/983478/dr-soliman-fakeeh-hospital-squarelogo-1584094840587.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnYYfs3DJHhajT2pYbbEMojibHOpAPF7i2UQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJy5zecW-dvmXS6NP3DHQ0UIgom3tQhwB1-A&usqp=CAU',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Hospitals",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 35,
              color: Color.fromRGBO(40, 87, 69, 1),
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: _hospitals.length,
          itemBuilder: (context, index) {
            return ServicesItem(
              name: _hospitals[index],
              link: _logo[index],
            );
          }),
    );
  }
}

class HotelsList extends StatefulWidget {
  const HotelsList({super.key});

  @override
  State<HotelsList> createState() => _HotelsListState();
}

class _HotelsListState extends State<HotelsList> {
  final List _hotels = [
    "Booking",
    "Airbnb",
    "Almosafer",
    "Hopper",
    "TripAdvisor",
    "Almatar",
    "Rehlat"
  ];

  final List _logo = [
    "https://seeklogo.com/images/B/booking-logo-937C69F36E-seeklogo.com.png",
    "https://play-lh.googleusercontent.com/1zfN_BL13q20v0wvBzMWiZ_sL_t4KcCJBeAMRpOZeT3p34quM-4-pO-VcLj8PJNXPA0=w240-h480-rw",
    "https://play-lh.googleusercontent.com/Jesar9RAbtMTs-ggBXg7jx6PV5r0VkjY62K5CxBMCW6GDBDICD7SJTRtODoQVWZ8xg",
    "https://play-lh.googleusercontent.com/S-6NNM2VfCjO5VCkPYDElkvJ5vKCWTbgy_yEF_VWHnfkGZPh321zXiqeYVGngo5Fpzc",
    "https://play-lh.googleusercontent.com/Jh2kWG5cCWHWp3dBKdv2ZRu6PPoFmt1YjsjyktKYM29jz3HpPdyf9SpnTrFHfzIEUYA",
    "https://play-lh.googleusercontent.com/ZR7ZpUCUSIRZBJAtGFHALpXxIRUMPzwyAfzEt91sPvQ9WFvNFrRRXwCVLNoCC3aAIEY",
    "https://dynamicimages.rehlat.com/DynamicImages/MobileApp/1_NativeApp_Img.png?timestamp=17103634"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Hotels",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 35,
              color: Color.fromRGBO(40, 87, 69, 1),
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: _hotels.length,
          itemBuilder: (context, index) {
            return ServicesItem(
              name: _hotels[index],
              link: _logo[index],
            );
          }),
    );
  }
}

class CarRentalList extends StatefulWidget {
  const CarRentalList({super.key});

  @override
  State<CarRentalList> createState() => _CarRentalListState();
}

class _CarRentalListState extends State<CarRentalList> {
  final List _carrental = [
    "Key",
    "Yelo",
    "Carwah",
    "Telgani",
  ];

  final List _logo = [
    'https://pbs.twimg.com/profile_images/1643597529076977664/dhzFhiwt_400x400.jpg',
    'https://play-lh.googleusercontent.com/Zyyljd8ymvui0_CBNUDyQ1YhvQKG1r9xeXyvb1DT38U6LkfLgSxDTHZt2fGWLENXdwY5',
    'https://yt3.googleusercontent.com/oE1EnpZy1e4-m9dTjR9dPN-mzgnAYxRmmuB6Itx-D3yk-WcR_tz0IaBpiGbbNHWLUCAlD_j1Xg=s900-c-k-c0x00ffffff-no-rj',
    'https://play-lh.googleusercontent.com/gLsJUcRXyRM2245BCJZF3Ai7hsnj0qX4fCA5w6QR0LLmH-0dfvnd0KKn2ioR79fEWw',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Car Rentral",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 35,
              color: Color.fromRGBO(40, 87, 69, 1),
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: _carrental.length,
          itemBuilder: (context, index) {
            return ServicesItem(
              name: _carrental[index],
              link: _logo[index],
            );
          }),
    );
  }
}

class DeliveryList extends StatefulWidget {
  const DeliveryList({super.key});

  @override
  State<DeliveryList> createState() => _DeliveryListState();
}

class _DeliveryListState extends State<DeliveryList> {
  final List _delivery = [
    "Mrsool",
    "Jahez",
    "ToYou",
    "The Chefz",
    "HungerStation",
    "COFE",
    "Ninja",
  ];

  final List _logo = [
    'https://play-lh.googleusercontent.com/C5Da8MqdVedd3-M-aIWsjc0R1DOINMJBsV7nZezLH-dztbRVQudLc9DjFk8vciGzx7A',
    'https://play-lh.googleusercontent.com/vo3LYx5f9xGcGD_23tnXYLtbShsTveRpKslOiB14QOu95I9A2OkB2wTB_ORd2-RB1E4',
    'https://play-lh.googleusercontent.com/kpsFwUFQNVUNvG4EgOw06N_wOBjuUIiiYa04fhFQftLCkmWU0lww8ERMhSOfO_akDo8',
    'https://play-lh.googleusercontent.com/eABRCczeTa3UJSc_Y6_R5NhSNtu_5fqz459WzBv9LvIEGvYp2KBw35fW2EXiZkpnkQyL',
    'https://play-lh.googleusercontent.com/lxqIY6ukgrD2T6pVzGL9W7851Vll4xKrADJOl8gLOTVps9ZGUa3Z88DPrCXgAJ7TrZ8Y',
    'https://play-lh.googleusercontent.com/GqxOM5eaPP7EURgZVIT4bFd6JOcX8gQ9lYMn8Wo3BybquerqZY4bAYWTGfquhhYTWRv5',
    'https://play-lh.googleusercontent.com/B2dbsTz6ey1BxzGqQAkmeAJzwRuEHj6LZ7vzmx9cWCEQiGS18dGa76bRDS9CAzqtiw',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Delivery",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 35,
              color: Color.fromRGBO(40, 87, 69, 1),
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: _delivery.length,
          itemBuilder: (context, index) {
            return ServicesItem(
              name: _delivery[index],
              link: _logo[index],
            );
          }),
    );
  }
}

class EmergencyContacts extends StatefulWidget {
  const EmergencyContacts({super.key});

  @override
  State<EmergencyContacts> createState() => _EmergencyContactsState();
}

class _EmergencyContactsState extends State<EmergencyContacts> {
  final List _emName = [
    "Security Operations Number",
    "Ambulance",
    "Tourism Call Center",
    "Najm",
  ];

  final List _emNum = ["911", "997", "930", "920000560"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Emergency Contacts",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 35,
              color: Color.fromRGBO(40, 87, 69, 1),
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: _emName.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              width: 320,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(3, 3),
                        spreadRadius: 2,
                        blurRadius: 2)
                  ],
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: const Color.fromRGBO(40, 87, 69, 1), width: 2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      _emName[index],
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      _emNum[index],
                      style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}

class LaundryList extends StatefulWidget {
  const LaundryList({super.key});

  @override
  State<LaundryList> createState() => _LaundryListState();
}

class _LaundryListState extends State<LaundryList> {
  final List _laundry = [
    "Ghasili",
    "GaseelExpress",
    "فقاعة غسيل",
    "Aljabr Laundry",
    "Bubbles Laundry",
    "Lotus Laundry",
  ];

  final List _logo = [
    'https://play-lh.googleusercontent.com/eAt6_-7o0W_QLiOTwBvKn3VYU9QOfKLAj8y2DQ_kHFYThVw97sgk-l2rjlmcXQ1cBic',
    'https://play-lh.googleusercontent.com/CUleurtoF0mIY1ZM_QYFeJnBYA4vE14ArlsUoDXLlW1Ms9y4Fsbg8xZHeeAmqv2uLA',
    'https://is3-ssl.mzstatic.com/image/thumb/Purple115/v4/3b/88/a0/3b88a0d8-4817-81df-010e-536a0171353c/AppIcon-1x_U007emarketing-0-0-GLES2_U002c0-512MB-sRGB-0-0-0-85-220-0-0-0-7.png/512x512bb.jpg',
    'https://pbs.twimg.com/profile_images/1527235986433908736/3PG3j9oC_400x400.jpg',
    'https://play-lh.googleusercontent.com/pp94A2oR4gLiEb1YF3Nkwkdc-YAcubBrQSvh0Q16ZyVxS3EYtutBGaW9Pl1xv0xyGis',
    'https://play-lh.googleusercontent.com/NOCaj6_L_BjJTEHJxPeiD3aiLZazEi_k5bbV0ifFAHRj1EB7QXskB9W5RYz7aTVF3SY',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Laundry",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 35,
              color: Color.fromRGBO(40, 87, 69, 1),
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: _laundry.length,
          itemBuilder: (context, index) {
            return ServicesItem(
              name: _laundry[index],
              link: _logo[index],
            );
          }),
    );
  }
}

class PharmaciesList extends StatefulWidget {
  const PharmaciesList({super.key});

  @override
  State<PharmaciesList> createState() => _PharmaciesListState();
}

class _PharmaciesListState extends State<PharmaciesList> {
  final List _pharmacies = [
    "Nahdi Pharmacy",
    "Al-Dawaa Pharmacy",
    "Lemon Pharmacy",
    "Orange Pharmacy",
    "Kunooz Pharmacy",
    "Whites Pharmacy",
    "Boots Pharmacy",
    "Adam Pharmacy",
    "Inoova Pharmacy",
  ];

  final List _logo = [
    'https://play-lh.googleusercontent.com/e25Mhhn6PzECbvUM3T_TlRwwXxXVruOQLDqmMRER-kFaocRrRS-FYcWeagd354DjYl8',
    'https://s3-symbol-logo.tradingview.com/aldawaa-medical-services-co--600.png',
    'https://play-lh.googleusercontent.com/x23bJauoMdVfeJQwV0V9Q9tERu6ritLwHFfGrmW-RgJxljOmMIM_SRsNjkiFfV8srLNs',
    'https://play-lh.googleusercontent.com/wb5mQbf7vTDv_7UE_p5Dmh8GlXCvNv5vsrghwtNlp0z-R61Z-sFbdggiWB1SDNI-Ve1G=w240-h480-rw',
    'https://play-lh.googleusercontent.com/x5hgaleZxoktMRcsBfxIANIw8S2Gqb3Z5j-DUKHhlxEnH9j9cTh-DE7bc5Oh1OJw0kQM',
    'https://media.licdn.com/dms/image/C4E0BAQFDjPWXmQYedg/company-logo_200_200/0/1648988566391?e=2147483647&v=beta&t=8I-onH64V5j-9JE0EXix__NeDC1wI30xjtZJ-6WHk04',
    'https://play-lh.googleusercontent.com/PjGCSjJ10LX-AI_H7qiUV4qGUuvoLz7HobhdNl-cclN72QtBMHBk823KbsLmQsH9qWi2',
    'https://media.licdn.com/dms/image/C4E0BAQGWJxuQVKZ25Q/company-logo_200_200/0/1616275541036?e=2147483647&v=beta&t=wEafJ2VE-ot7mqeu9O-cc7x2ynFIFQrxr4osMZyQAeQ',
    'https://play-lh.googleusercontent.com/mH3o5tNit6o_7q_6UiSf8cSem-QRDJWjaQhbQAmyrq084bve0V3val9UTMYkuU6HVXg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Pharmacies",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 35,
              color: Color.fromRGBO(40, 87, 69, 1),
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: _pharmacies.length,
          itemBuilder: (context, index) {
            return ServicesItem(
              name: _pharmacies[index],
              link: _logo[index],
            );
          }),
    );
  }
}

class TransportList extends StatefulWidget {
  const TransportList({super.key});

  @override
  State<TransportList> createState() => _TransportListState();
}

class _TransportListState extends State<TransportList> {
  final List _car = [
    "Uber",
    "Careem",
    "Jeeny",
    "Bolt",
  ];

  final List _bus = ["Riyadh bus"];

  final List _metro = ["Riyadh metro"];

  final List _carlogo = [
    "https://play-lh.googleusercontent.com/AQtSF5Sl18yp3mQ2tcbOrBLekb7cyP3kyg5BB1uUuc55zfcnbkCDLHFTBwZfYiu1aDI",
    "https://play-lh.googleusercontent.com/9kHZMDejlsMaxifCvfosjRw8NKaj3dnNquEbTFBieo4N2Prtk0EaIBHOgcK7i4lFItY",
    "https://play-lh.googleusercontent.com/PZFH1ice6ZY5IIluGGwGAvKsQqwkUe-2yIYsfu34XPFfu2KpaP5ZnREaJinsI7lSAL8",
    "https://play-lh.googleusercontent.com/TRCKh9Uk5mME5lVDZBAVmBMyBEiumHw4Ef9MTAnRqgcK8MEr4M8jqqBDGX_pKVBffpo",
  ];

  final List _buslogo = [
    "https://play-lh.googleusercontent.com/UW02GYXL-3Oxtib9UvCnFysN5vpUIpveMnQ08r89LKtcjmtYKo9jfSIpGplk6e5vJA"
  ];
  final List _metrologo = [
    "https://zenprospect-production.s3.amazonaws.com/uploads/pictures/64a5211a3550cd000162c795/picture"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Transportation",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 35,
              color: Color.fromRGBO(40, 87, 69, 1),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              "Car Ride",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 500,
              child: ListView.builder(
                  itemCount: _car.length,
                  itemBuilder: (context, index) {
                    return ServicesItem(
                      name: _car[index],
                      link: _carlogo[index],
                    );
                  }),
            ),
            const Text(
              "Bus",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  itemCount: _bus.length,
                  itemBuilder: (context, index) {
                    return ServicesItem(
                      name: _bus[index],
                      link: _buslogo[index],
                    );
                  }),
            ),
            const Text(
              "Metro",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  itemCount: _metro.length,
                  itemBuilder: (context, index) {
                    return ServicesItem(
                      name: _metro[index],
                      link: _metrologo[index],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class HotelsListAR extends StatefulWidget {
  const HotelsListAR({super.key});

  @override
  State<HotelsListAR> createState() => _HotelsListARState();
}

class _HotelsListARState extends State<HotelsListAR> {
  final List _hotels = [
    "بوكينق",
    "ايربنب",
    "المسافر",
    "هوبر",
    "تريب ادفايزر",
    "المطار",
    "رحلات"
  ];

  final List _logo = [
    "https://play-lh.googleusercontent.com/eJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY",
    "https://play-lh.googleusercontent.com/1zfN_BL13q20v0wvBzMWiZ_sL_t4KcCJBeAMRpOZeT3p34quM-4-pO-VcLj8PJNXPA0=w240-h480-rw",
    "https://play-lh.googleusercontent.com/Jesar9RAbtMTs-ggBXg7jx6PV5r0VkjY62K5CxBMCW6GDBDICD7SJTRtODoQVWZ8xg",
    "https://play-lh.googleusercontent.com/S-6NNM2VfCjO5VCkPYDElkvJ5vKCWTbgy_yEF_VWHnfkGZPh321zXiqeYVGngo5Fpzc",
    "https://play-lh.googleusercontent.com/Jh2kWG5cCWHWp3dBKdv2ZRu6PPoFmt1YjsjyktKYM29jz3HpPdyf9SpnTrFHfzIEUYA",
    "https://play-lh.googleusercontent.com/ZR7ZpUCUSIRZBJAtGFHALpXxIRUMPzwyAfzEt91sPvQ9WFvNFrRRXwCVLNoCC3aAIEY",
    "https://dynamicimages.rehlat.com/DynamicImages/MobileApp/1_NativeApp_Img.png?timestamp=17103634"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "الفنادق",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
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
                  color: Color.fromRGBO(40, 87, 69, 1),
                )),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: _hotels.length,
          itemBuilder: (context, index) {
            return ServicesItemAR(
              name: _hotels[index],
              link: _logo[index],
            );
          }),
    );
  }
}

class TransportListAR extends StatefulWidget {
  const TransportListAR({super.key});

  @override
  State<TransportListAR> createState() => _TransportListARState();
}

class _TransportListARState extends State<TransportListAR> {
  final List _car = [
    "اوبر",
    "كريم",
    "جيني",
    "بولت",
  ];

  final List _bus = ["حافلات الرياض"];

  final List _metro = ["قطار الرياض"];

  final List _carlogo = [
    "https://play-lh.googleusercontent.com/AQtSF5Sl18yp3mQ2tcbOrBLekb7cyP3kyg5BB1uUuc55zfcnbkCDLHFTBwZfYiu1aDI",
    "https://play-lh.googleusercontent.com/9kHZMDejlsMaxifCvfosjRw8NKaj3dnNquEbTFBieo4N2Prtk0EaIBHOgcK7i4lFItY",
    "https://play-lh.googleusercontent.com/PZFH1ice6ZY5IIluGGwGAvKsQqwkUe-2yIYsfu34XPFfu2KpaP5ZnREaJinsI7lSAL8",
    "https://play-lh.googleusercontent.com/TRCKh9Uk5mME5lVDZBAVmBMyBEiumHw4Ef9MTAnRqgcK8MEr4M8jqqBDGX_pKVBffpo",
  ];

  final List _buslogo = [
    "https://play-lh.googleusercontent.com/UW02GYXL-3Oxtib9UvCnFysN5vpUIpveMnQ08r89LKtcjmtYKo9jfSIpGplk6e5vJA"
  ];
  final List _metrologo = [
    "https://zenprospect-production.s3.amazonaws.com/uploads/pictures/64a5211a3550cd000162c795/picture"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "المواصلات",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
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
                  color: Color.fromRGBO(40, 87, 69, 1),
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              "سيارة الأجرة",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 500,
              child: ListView.builder(
                  itemCount: _car.length,
                  itemBuilder: (context, index) {
                    return ServicesItemAR(
                      name: _car[index],
                      link: _carlogo[index],
                    );
                  }),
            ),
            const Text(
              "الحافلة",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  itemCount: _bus.length,
                  itemBuilder: (context, index) {
                    return ServicesItemAR(
                      name: _bus[index],
                      link: _buslogo[index],
                    );
                  }),
            ),
            const Text(
              "القطار",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  itemCount: _metro.length,
                  itemBuilder: (context, index) {
                    return ServicesItemAR(
                      name: _metro[index],
                      link: _metrologo[index],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class HospitalsListAR extends StatefulWidget {
  const HospitalsListAR({super.key});

  @override
  State<HospitalsListAR> createState() => _HospitalsListARState();
}

class _HospitalsListARState extends State<HospitalsListAR> {
  final List _hospitals = [
    "مستشفى سليمان الحبيب",
    "المركز التخصصي الطبي",
    "مستشفى دله",
    "مستشفى الحمادي",
    "مستشفى السعودي الألماني",
    "مستشفى المواساة",
    "مستشفى سليمان فقيه",
    "مستشفى علي بن علي",
    "مستشفى الملك فيصل التخصصي",
  ];

  final List _logo = [
    'https://images.sehaguide.com//logos/34141/12615773_1066547196719971_4279365588429550143_o8ce0980f-7136-4212-943c-cb7a2c39a245.png',
    'https://play-lh.googleusercontent.com/sWqxDn9DoFpTdA1Knf1CejG276G_57zzJygTYJryp8bIRo7yXw-WWyxouy4Vp4suf9U',
    'https://cdn6.aptoide.com/imgs/5/1/c/51cf60a5f6c4612875ea23ad4b8d3efa_icon.jpg',
    'https://media.licdn.com/dms/image/C560BAQGvEo1UbB2asg/company-logo_200_200/0/1519869226496?e=2147483647&v=beta&t=zrEmtDgtbjacEoSknCMDejIteZIdR3BQ4Ra6sqlRuQE',
    'https://play-lh.googleusercontent.com/6ICLpwb6x15vsQpEInyOqn6stk_PcP2vkgTQ87RE_VwG-jb6KeBLXgox1ZMBCErtdsk',
    'https://play-lh.googleusercontent.com/T4U0I9dQfmFpLTVkn7aSXcMeMbpDr32JQtO_qBsSQgjc3lOx5U3Xq0id4WpAYqR1n9Y',
    'https://media.glassdoor.com/sql/983478/dr-soliman-fakeeh-hospital-squarelogo-1584094840587.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnYYfs3DJHhajT2pYbbEMojibHOpAPF7i2UQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJy5zecW-dvmXS6NP3DHQ0UIgom3tQhwB1-A&usqp=CAU',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "المستشفيات",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
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
                  color: Color.fromRGBO(40, 87, 69, 1),
                )),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: _hospitals.length,
          itemBuilder: (context, index) {
            return ServicesItemAR(
              name: _hospitals[index],
              link: _logo[index],
            );
          }),
    );
  }
}

class CarRentalAR extends StatefulWidget {
  const CarRentalAR({super.key});

  @override
  State<CarRentalAR> createState() => _CarRentalARState();
}

class _CarRentalARState extends State<CarRentalAR> {
  final List _carrental = [
    "المفتاح",
    "يلو",
    "كروة",
    "تلقاني",
  ];

  final List _logo = [
    'https://pbs.twimg.com/profile_images/1643597529076977664/dhzFhiwt_400x400.jpg',
    'https://play-lh.googleusercontent.com/Zyyljd8ymvui0_CBNUDyQ1YhvQKG1r9xeXyvb1DT38U6LkfLgSxDTHZt2fGWLENXdwY5',
    'https://yt3.googleusercontent.com/oE1EnpZy1e4-m9dTjR9dPN-mzgnAYxRmmuB6Itx-D3yk-WcR_tz0IaBpiGbbNHWLUCAlD_j1Xg=s900-c-k-c0x00ffffff-no-rj',
    'https://play-lh.googleusercontent.com/gLsJUcRXyRM2245BCJZF3Ai7hsnj0qX4fCA5w6QR0LLmH-0dfvnd0KKn2ioR79fEWw',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "تأجير السيارات",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
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
                  color: Color.fromRGBO(40, 87, 69, 1),
                )),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: _carrental.length,
          itemBuilder: (context, index) {
            return ServicesItemAR(
              name: _carrental[index],
              link: _logo[index],
            );
          }),
    );
  }
}

class DeliveryListAR extends StatefulWidget {
  const DeliveryListAR({super.key});

  @override
  State<DeliveryListAR> createState() => _DeliveryListARState();
}

class _DeliveryListARState extends State<DeliveryListAR> {
  final List _delivery = [
    "مرسول",
    "جاهز",
    "تويو",
    "ذا شيفز",
    "هنجرستيشن",
    "كوف",
    "نينجا",
  ];

  final List _logo = [
    'https://play-lh.googleusercontent.com/C5Da8MqdVedd3-M-aIWsjc0R1DOINMJBsV7nZezLH-dztbRVQudLc9DjFk8vciGzx7A',
    'https://play-lh.googleusercontent.com/vo3LYx5f9xGcGD_23tnXYLtbShsTveRpKslOiB14QOu95I9A2OkB2wTB_ORd2-RB1E4',
    'https://play-lh.googleusercontent.com/kpsFwUFQNVUNvG4EgOw06N_wOBjuUIiiYa04fhFQftLCkmWU0lww8ERMhSOfO_akDo8',
    'https://play-lh.googleusercontent.com/eABRCczeTa3UJSc_Y6_R5NhSNtu_5fqz459WzBv9LvIEGvYp2KBw35fW2EXiZkpnkQyL',
    'https://play-lh.googleusercontent.com/lxqIY6ukgrD2T6pVzGL9W7851Vll4xKrADJOl8gLOTVps9ZGUa3Z88DPrCXgAJ7TrZ8Y',
    'https://play-lh.googleusercontent.com/GqxOM5eaPP7EURgZVIT4bFd6JOcX8gQ9lYMn8Wo3BybquerqZY4bAYWTGfquhhYTWRv5',
    'https://play-lh.googleusercontent.com/B2dbsTz6ey1BxzGqQAkmeAJzwRuEHj6LZ7vzmx9cWCEQiGS18dGa76bRDS9CAzqtiw',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "تطبيقات التوصيل",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
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
                  color: Color.fromRGBO(40, 87, 69, 1),
                )),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: _delivery.length,
          itemBuilder: (context, index) {
            return ServicesItemAR(
              name: _delivery[index],
              link: _logo[index],
            );
          }),
    );
  }
}

class PharmacyListAR extends StatefulWidget {
  const PharmacyListAR({super.key});

  @override
  State<PharmacyListAR> createState() => _PharmacyListARState();
}

class _PharmacyListARState extends State<PharmacyListAR> {
  final List _pharmacies = [
    "صيدلية النهدي",
    "صيدليةالدواء",
    "صيدلية ليمون",
    "صيدلية اورانج",
    "صيدلية كنوز",
    "صيدلية وايتس",
    "صيدلية بوتس",
    "صيدلية آدم",
    "صيدلية انوفا",
  ];

  final List _logo = [
    'https://play-lh.googleusercontent.com/e25Mhhn6PzECbvUM3T_TlRwwXxXVruOQLDqmMRER-kFaocRrRS-FYcWeagd354DjYl8',
    'https://s3-symbol-logo.tradingview.com/aldawaa-medical-services-co--600.png',
    'https://play-lh.googleusercontent.com/x23bJauoMdVfeJQwV0V9Q9tERu6ritLwHFfGrmW-RgJxljOmMIM_SRsNjkiFfV8srLNs',
    'https://play-lh.googleusercontent.com/wb5mQbf7vTDv_7UE_p5Dmh8GlXCvNv5vsrghwtNlp0z-R61Z-sFbdggiWB1SDNI-Ve1G=w240-h480-rw',
    'https://play-lh.googleusercontent.com/x5hgaleZxoktMRcsBfxIANIw8S2Gqb3Z5j-DUKHhlxEnH9j9cTh-DE7bc5Oh1OJw0kQM',
    'https://media.licdn.com/dms/image/C4E0BAQFDjPWXmQYedg/company-logo_200_200/0/1648988566391?e=2147483647&v=beta&t=8I-onH64V5j-9JE0EXix__NeDC1wI30xjtZJ-6WHk04',
    'https://play-lh.googleusercontent.com/PjGCSjJ10LX-AI_H7qiUV4qGUuvoLz7HobhdNl-cclN72QtBMHBk823KbsLmQsH9qWi2',
    'https://media.licdn.com/dms/image/C4E0BAQGWJxuQVKZ25Q/company-logo_200_200/0/1616275541036?e=2147483647&v=beta&t=wEafJ2VE-ot7mqeu9O-cc7x2ynFIFQrxr4osMZyQAeQ',
    'https://play-lh.googleusercontent.com/mH3o5tNit6o_7q_6UiSf8cSem-QRDJWjaQhbQAmyrq084bve0V3val9UTMYkuU6HVXg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "الصيدليات",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
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
                  color: Color.fromRGBO(40, 87, 69, 1),
                )),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: _pharmacies.length,
          itemBuilder: (context, index) {
            return ServicesItemAR(
              name: _pharmacies[index],
              link: _logo[index],
            );
          }),
    );
  }
}

class LaundryListAR extends StatefulWidget {
  const LaundryListAR({super.key});

  @override
  State<LaundryListAR> createState() => _LaundryListARState();
}

class _LaundryListARState extends State<LaundryListAR> {
  final List _laundry = [
    "غسيلي",
    "غسيل اكسبرس",
    "فقاعة غسيل",
    "مغسلة الجبر",
    "مغسلة ببلز",
    "مغسلة لوتس",
  ];

  final List _logo = [
    'https://play-lh.googleusercontent.com/eAt6_-7o0W_QLiOTwBvKn3VYU9QOfKLAj8y2DQ_kHFYThVw97sgk-l2rjlmcXQ1cBic',
    'https://play-lh.googleusercontent.com/CUleurtoF0mIY1ZM_QYFeJnBYA4vE14ArlsUoDXLlW1Ms9y4Fsbg8xZHeeAmqv2uLA',
    'https://is3-ssl.mzstatic.com/image/thumb/Purple115/v4/3b/88/a0/3b88a0d8-4817-81df-010e-536a0171353c/AppIcon-1x_U007emarketing-0-0-GLES2_U002c0-512MB-sRGB-0-0-0-85-220-0-0-0-7.png/512x512bb.jpg',
    'https://pbs.twimg.com/profile_images/1527235986433908736/3PG3j9oC_400x400.jpg',
    'https://play-lh.googleusercontent.com/pp94A2oR4gLiEb1YF3Nkwkdc-YAcubBrQSvh0Q16ZyVxS3EYtutBGaW9Pl1xv0xyGis',
    'https://play-lh.googleusercontent.com/NOCaj6_L_BjJTEHJxPeiD3aiLZazEi_k5bbV0ifFAHRj1EB7QXskB9W5RYz7aTVF3SY',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "غسيل الملابس",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
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
                  color: Color.fromRGBO(40, 87, 69, 1),
                )),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: _laundry.length,
          itemBuilder: (context, index) {
            return ServicesItemAR(
              name: _laundry[index],
              link: _logo[index],
            );
          }),
    );
  }
}

class EmergencyContactAR extends StatefulWidget {
  const EmergencyContactAR({super.key});

  @override
  State<EmergencyContactAR> createState() => _EmergencyContactARState();
}

class _EmergencyContactARState extends State<EmergencyContactAR> {
  final List _emName = [
    "رقم العمليات الأمنية",
    "الإسعاف",
    "خدمات السياح",
    "نجم",
  ];

  final List _emNum = ["911", "997", "930", "920000560"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "أرقام الطوارئ",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
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
                  color: Color.fromRGBO(40, 87, 69, 1),
                )),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: _emName.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              width: 320,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(3, 3),
                        spreadRadius: 2,
                        blurRadius: 2)
                  ],
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: const Color.fromRGBO(40, 87, 69, 1), width: 2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      _emNum[index],
                      style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      _emName[index],
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
