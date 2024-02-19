import 'package:flutter/material.dart';

class ActivityPage extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final String wh;
  final String number;
  final String fees;
  final String link;
  final String location;

  const ActivityPage(
      {super.key,
      required this.image,
      required this.name,
      required this.description,
      required this.wh,
      required this.number,
      required this.fees,
      required this.link,
      required this.location});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: const Color.fromRGBO(73, 158, 88, 1),
        title: Text(
          name,
          style: const TextStyle(color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 40,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        image, // Make sure the image path is correct
                      ),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 10),
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Text(
                description,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Text(
                "Working Hours",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                wh,
                style: const TextStyle(
                    color: Colors.orange,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.left,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Text(
                "Contact Number",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                number,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                textAlign: TextAlign.left,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Text(
                "Admission Fee",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                fees,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                textAlign: TextAlign.left,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Text(
                "Website / Instagram",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                link,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.blue, // Assuming this is a link
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Text(
                "Location",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                location,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.blue, // Assuming this is a link
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}

class ActivityPageAR extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final String wh;
  final String number;
  final String fees;
  final String link;
  final String location;

  const ActivityPageAR(
      {super.key,
      required this.image,
      required this.name,
      required this.description,
      required this.wh,
      required this.number,
      required this.fees,
      required this.link,
      required this.location});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: const Color.fromRGBO(73, 158, 88, 1),
        title: Text(
          name,
          style: const TextStyle(color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        image, // Make sure the image path is correct
                      ),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18, top: 10),
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Text(
                description,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Text(
                "ساعات العمل",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                wh,
                style: const TextStyle(
                    color: Colors.orange,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.right,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Text(
                "رقم التواصل",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                number,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                textAlign: TextAlign.right,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Text(
                "رسوم الدخول",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                fees,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                textAlign: TextAlign.right,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Text(
                "الموقع الإلكتروني/ انستجرام",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                link,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.blue, // Assuming this is a link
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Text(
                "الموقع",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                location,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.blue, // Assuming this is a link
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}

class RestaurantPage extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final String wh;
  final String number;
  final String link;
  final String location;

  const RestaurantPage(
      {super.key,
      required this.image,
      required this.name,
      required this.description,
      required this.wh,
      required this.number,
      required this.link,
      required this.location});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: const Color.fromRGBO(73, 158, 88, 1),
        title: Text(
          name,
          style: const TextStyle(color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
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
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        image, // Make sure the image path is correct
                      ),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 10),
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Text(
                description,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Text(
                "Working Hours",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                wh,
                style: const TextStyle(
                    color: Colors.orange,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.left,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Text(
                "Contact Number",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                number,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                textAlign: TextAlign.left,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Text(
                "Website / Instagram",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                link,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.blue, // Assuming this is a link
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Text(
                "Location",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                location,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.blue, // Assuming this is a link
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}

class RestaurantPageAR extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final String wh;
  final String number;
  final String link;
  final String location;

  const RestaurantPageAR(
      {super.key,
      required this.image,
      required this.name,
      required this.description,
      required this.wh,
      required this.number,
      required this.link,
      required this.location});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: const Color.fromRGBO(73, 158, 88, 1),
        title: Text(
          name,
          style: const TextStyle(color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        image, // Make sure the image path is correct
                      ),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18, top: 10),
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Text(
                description,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Text(
                "ساعات العمل",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                wh,
                style: const TextStyle(
                    color: Colors.orange,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.right,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Text(
                "رقم التواصل",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                number,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                textAlign: TextAlign.right,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Text(
                "الموقع الإلكتروني/ انستجرام",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                link,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.blue, // Assuming this is a link
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Text(
                "الموقع",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                location,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.blue, // Assuming this is a link
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
