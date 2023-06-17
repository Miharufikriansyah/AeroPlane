import 'package:flutter/material.dart';
import 'package:aeroplan/widgets/flightCard.dart';
import 'package:aeroplan/firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FlightPage extends StatefulWidget {
  String dates;
  FlightPage({super.key, required this.dates});

  @override
  State<FlightPage> createState() => _FlightPageState();
}

class _FlightPageState extends State<FlightPage> {
  Map<String, dynamic> _list = {"test": 12111};
  List<String> _ListName = [];
  List<int> _ListPrice = [];
  List<String> _ListAsal = [];
  List<String> _ListTujuan = [];
  List<String> _ListWaktu1 = [];
  List<String> _ListWaktu2 = [];
  List<String> _ListLogo = [];
  List<String> _ListDurasi = [];
  List<String> _ListKota1 = [];
  List<String> _ListKota2 = [];

  void getData() async {
    var collection = FirebaseFirestore.instance.collection('Flight');
    var querySnapshot = await collection.get();
    for (var queryDocumentSnapshot in querySnapshot.docs) {
      _list = queryDocumentSnapshot.data();
      _ListName.add(_list["nama"]);
      _ListPrice.add(_list["harga"]);
      _ListAsal.add(_list["asal"]);
      _ListTujuan.add(_list["tujuan"]);
      _ListWaktu1.add(_list["waktu_berangkat"]);
      _ListWaktu2.add(_list["waktu_tiba"]);
      _ListLogo.add(_list["logo"]);
      _ListDurasi.add(_list["durasi"]);
      _ListKota1.add(_list["kota1"]);
      _ListKota2.add(_list["kota2"]);
    }
    // final db = FirebaseFirestore.instance;
    // db.collection("Flight").get().then((value) {
    //   for (var element in value.docs) {
    //     setState(() {
    //       _list = element.data();
    //       _ListName.add(element.data()["nama"]);
    //       _ListPrice.add(element.data()["harga"]);
    //       _ListAsal.add(element.data()["asal"]);
    //       _ListTujuan.add(element.data()["tujuan"]);
    //       _ListWaktu1.add(element.data()["waktu_berangkat"]);
    //       _ListWaktu2.add(element.data()["waktu_tiba"]);
    //       _ListLogo.add(element.data()["logo"]);
    //       _ListDurasi.add(element.data()["durasi"]);
    //       _ListKota1.add(element.data()["kota1"]);
    //       _ListKota2.add(element.data()["kota2"]);
    //     });
    //   }
    // });
  }

  @override
  void initState() {
    // initFirebase();
    getData();
    super.initState();
  }

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
                            // "1 Apr 2023",
                            widget.dates,
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
                  for (int i = 0; i < _ListName.length; i++) ...[
                    FlightCard(
                      airline: "${_ListName.elementAt(i)}",
                      price: "${_ListPrice.elementAt(i)}",
                      depart: "${_ListAsal.elementAt(i)}",
                      arrive: "${_ListTujuan.elementAt(i)}",
                      time1: "${_ListWaktu1.elementAt(i)}",
                      time2: "${_ListWaktu2.elementAt(i)}",
                      duration: "${_ListDurasi.elementAt(i)}",
                      kota1: "${_ListKota1.elementAt(i)}",
                      kota2: "${_ListKota2.elementAt(i)}",
                    )
                  ]
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
