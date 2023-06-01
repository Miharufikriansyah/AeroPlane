import 'package:flutter/material.dart';

class RecentCard extends StatelessWidget {
  String title, date, passanger, clasify;

  RecentCard(
      {super.key,
      required this.title,
      required this.date,
      required this.passanger,
      required this.clasify});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Card(
        color: const Color(0xffE7EEF6),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(color: Colors.black)),
        shadowColor: Colors.black,
        child: SizedBox(
          width: 220,
          height: 120,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 19, fontWeight: FontWeight.w500),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      date,
                      style: const TextStyle(fontSize: 16),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff999999),
                      size: 23,
                    )
                  ],
                ),
                Text(
                  "$passanger.$clasify",
                  style: const TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
