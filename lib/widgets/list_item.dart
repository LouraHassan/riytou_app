import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;
  const ListItem({super.key, required this.title, required this.page});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: 330,
        height: 95,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    //backgroundColor: Colors.black38,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Color.fromRGBO(40, 87, 69, 1),
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 40,
                  color: Color.fromRGBO(253, 198, 81, 1),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SchedulePage extends StatelessWidget {
  final String activity;
  final String place;
  final Widget page;
  const SchedulePage(
      {super.key,
      required this.activity,
      required this.place,
      required this.page});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        width: 330,
        height: 95,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      activity,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(253, 198, 81, 1)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      place,
                      style: GoogleFonts.adamina(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: const Color.fromRGBO(40, 87, 69, 1),
                      ),
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 40,
                  color: Color.fromRGBO(253, 198, 81, 1),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ListItemAR extends StatelessWidget {
  final String title;
  final Widget page;
  const ListItemAR({super.key, required this.title, required this.page});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: 330,
        height: 95,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.arrow_back_ios,
                  size: 40,
                  color: Color.fromRGBO(253, 198, 81, 1),
                ),
                Text(
                  title,
                  style: const TextStyle(
                    //backgroundColor: Colors.black38,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Color.fromRGBO(40, 87, 69, 1),
                  ),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SchedulePageAR extends StatelessWidget {
  final String activity;
  final String place;
  final Widget page;
  const SchedulePageAR(
      {super.key,
      required this.activity,
      required this.place,
      required this.page});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        width: 330,
        height: 95,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.arrow_back_ios,
                  size: 40,
                  color: Color.fromRGBO(253, 198, 81, 1),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      activity,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(253, 198, 81, 1)),
                    ),
                    Text(
                      place,
                      style: GoogleFonts.adamina(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: const Color.fromRGBO(40, 87, 69, 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
