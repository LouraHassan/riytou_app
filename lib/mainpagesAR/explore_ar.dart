import 'package:flutter/material.dart';
import 'package:riytou_app/mainpagesEN/activitieslist.dart';
import 'package:riytou_app/mainpagesEN/home_page.dart';
import 'package:riytou_app/mainpagesEN/restaurantlist.dart';

class ExplorePAgeAR extends StatefulWidget {
  const ExplorePAgeAR({super.key});

  @override
  State<ExplorePAgeAR> createState() => _ExplorePAgeARState();
}

class _ExplorePAgeARState extends State<ExplorePAgeAR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "استكشف",
          style: TextStyle(
            fontSize: 30,
            color: Color.fromRGBO(40, 87, 69, 1),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: const Icon(
              Icons.language,
              size: 35,
              color: Colors.amber,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: NetworkImage(
                          "https://www.timeoutriyadh.com/cloud/timeoutriyadh/2023/04/16/Riyadh-season-boulevard-world-fireworks.jpg", // Make sure the image path is correct
                        ),
                        fit: BoxFit.cover)),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(0.5)),
                width: 350,
                height: 100,
                child: SizedBox(
                    width: 350,
                    height: 110,
                    child: Image.asset(
                      'Assets/image/f.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ActivitiesListAR()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  width: 350,
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(40, 87, 69, 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.arrow_back_ios,
                          size: 40,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                                color: Colors.black45,
                                offset: Offset(3, 3),
                                blurRadius: 8)
                          ],
                        ),
                        Text(
                          'المناطق السياحية',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RestaurantListAR()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  width: 350,
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(40, 87, 69, 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.arrow_back_ios,
                          size: 40,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                                color: Colors.black45,
                                offset: Offset(3, 3),
                                blurRadius: 8)
                          ],
                        ),
                        Text(
                          'المطاعم',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(0.5)),
                width: 350,
                height: 350,
                child: SizedBox(
                    width: 300,
                    height: 350,
                    child: Image.asset(
                      '',
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
