import 'package:flutter/material.dart';
import 'package:aeroplan/widgets/recentCard.dart';
import 'package:aeroplan/widgets/datePick.dart';
import 'package:aeroplan/widgets/inputField.dart';
import 'package:aeroplan/widgets/passanger.dart';
import 'package:aeroplan/widgets/flightClass.dart';
import 'package:aeroplan/pages/flightPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // TextEditingController _departController = TextEditingController();
  // TextEditingController _arriveController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                  height: 165,
                  width: 1000,
                  child: Image(
                    image: AssetImage('assets/images/bg-data.png'),
                    fit: BoxFit.fill,
                  )),
              Column(
                children: [
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 5),
                      padding: const EdgeInsets.all(20),
                      height: 120,
                      child: Row(children: [
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 35,
                          child: Icon(
                            Icons.person,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "Halo Alex!",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffF6F6F6)),
                                ),
                                const Text(
                                  "Kamu mau liburan kemana?",
                                  style: TextStyle(
                                      fontSize: 18, color: Color(0xffEAEAEA)),
                                )
                              ]),
                        )
                      ]),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffF6F6F6)),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              padding: const EdgeInsets.only(left: 5),
                              child: const Text(
                                "Dari",
                                style: TextStyle(fontSize: 20),
                              )),
                          InputField(
                            inputLabel: 'Keberangkatan',
                            prefIcon: Icons.flight_takeoff,
                          )
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(bottom: 10, top: 10),
                            padding: const EdgeInsets.only(left: 5),
                            child: const Text(
                              "Ke",
                              style: TextStyle(fontSize: 20),
                            )),
                        InputField(
                            inputLabel: 'Kedatangan',
                            prefIcon: Icons.flight_land)
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(bottom: 10, top: 15),
                            padding: const EdgeInsets.only(left: 5),
                            child: const Text(
                              "Tanggal Berangkat",
                              style: TextStyle(fontSize: 20),
                            )),
                        DatePick()
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 12, top: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  padding: EdgeInsets.only(left: 10),
                                  child: const Text(
                                    "Penumpang",
                                    style: TextStyle(fontSize: 20),
                                  )),
                              Passenger(),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 12, top: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  padding: EdgeInsets.only(left: 10),
                                  child: const Text(
                                    "Kelas Penerbangan",
                                    style: TextStyle(fontSize: 20),
                                  )),
                              FlightClass(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return FlightPage(
                            dates: "21 Juni 2023",
                          );
                        }));
                      },
                      style: TextButton.styleFrom(
                          fixedSize: Size(380, 50),
                          backgroundColor: Color(0xff4394FB)),
                      child: Text(
                        "Cari",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.history,
                          size: 30,
                          color: Color(0xff4394FB),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "Pencarian Terakhir Kamu",
                            style: TextStyle(fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 10),
                      margin: EdgeInsets.only(top: 5),
                      height: 120,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          RecentCard(
                              title: "Jakarta (CGK) - Tokyo (HND)",
                              date: "Sab, 8 Apr ",
                              passanger: "1 Orang",
                              clasify: "First Class"),
                          RecentCard(
                              title: "Jakarta (CGK) - Bali (DPS)",
                              date: "Sab, 8 Apr ",
                              passanger: "1 Orang",
                              clasify: "Economy Class")
                        ],
                      ))
                ],
              )
            ],
          ),
        ));
  }
}
