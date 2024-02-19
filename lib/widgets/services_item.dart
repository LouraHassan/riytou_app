import 'package:flutter/material.dart';

class ServicesItem extends StatelessWidget {
  final String name;
  final String link;

  const ServicesItem({super.key, required this.name, required this.link});

  @override
  Widget build(BuildContext context) {
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
          border:
              Border.all(color: const Color.fromRGBO(40, 87, 69, 1), width: 2)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.network(
              link,
              cacheHeight: 65,
            ),
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class ServicesItemAR extends StatelessWidget {
  final String name;
  final String link;

  const ServicesItemAR({super.key, required this.name, required this.link});

  @override
  Widget build(BuildContext context) {
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
          border:
              Border.all(color: const Color.fromRGBO(40, 87, 69, 1), width: 2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            name,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.network(
              link,
              cacheHeight: 65,
            ),
          ),
        ],
      ),
    );
  }
}
