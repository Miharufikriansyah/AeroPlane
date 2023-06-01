import 'package:flutter/material.dart';
import 'package:aeroplan/widgets/flightCard.dart';

class FlightPage extends StatefulWidget {
  const FlightPage({super.key});

  @override
  State<FlightPage> createState() => _FlightPageState();
}

class _FlightPageState extends State<FlightPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        padding: EdgeInsets.only(left: 10),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 40,
                        )),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: Text(
                            "CGK - SIN",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                        Container(
                          child: Text(
                            "7 Apr, 1 Orang, Ekonomi",
                            style: TextStyle(fontSize: 18),
                          ),
                        )
                      ],
                    ),
                    IconButton(
                        padding: EdgeInsets.only(right: 10),
                        onPressed: () {},
                        icon: Icon(
                          Icons.calendar_month,
                          size: 40,
                        ))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.filter_alt,
                        size: 40,
                        color: Color(0xff4394FB),
                      )),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Harga Terendah",
                      style: TextStyle(color: Color(0xff1F2223), fontSize: 15),
                    ),
                    style: TextButton.styleFrom(
                        fixedSize: Size(170, 35),
                        backgroundColor: Color(0xffE6EEF5)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Berangkat Lebih Awal",
                      style: TextStyle(color: Color(0xff1F2223), fontSize: 15),
                    ),
                    style: TextButton.styleFrom(
                        fixedSize: Size(170, 35),
                        backgroundColor: Color(0xffE6EEF5)),
                  )
                ],
              ),
              Column(
                children: [
                  FlightCard(
                      airline: "Air Asia",
                      price: "709.435",
                      depart: "CGK",
                      arrive: "SIN",
                      time1: "18:20",
                      time2: "21:15",
                      duration: "1j 55m"),
                  FlightCard(
                      airline: "Air Asia",
                      price: "709.435",
                      depart: "CGK",
                      arrive: "SIN",
                      time1: "18:20",
                      time2: "21:15",
                      duration: "1j 55m"),
                  FlightCard(
                      airline: "Air Asia",
                      price: "709.435",
                      depart: "CGK",
                      arrive: "SIN",
                      time1: "18:20",
                      time2: "21:15",
                      duration: "1j 55m"),
                  FlightCard(
                      airline: "Air Asia",
                      price: "709.435",
                      depart: "CGK",
                      arrive: "SIN",
                      time1: "18:20",
                      time2: "21:15",
                      duration: "1j 55m"),
                  FlightCard(
                      airline: "Air Asia",
                      price: "709.435",
                      depart: "CGK",
                      arrive: "SIN",
                      time1: "18:20",
                      time2: "21:15",
                      duration: "1j 55m")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
