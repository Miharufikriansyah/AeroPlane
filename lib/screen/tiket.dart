import 'package:flutter/material.dart';

class Tiket extends StatefulWidget {
  const Tiket({super.key});

  @override
  State<Tiket> createState() => _TiketState();
}

class _TiketState extends State<Tiket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Aktif Tiket",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                ),
                Icon(
                  Icons.assignment_outlined,
                  size: 50,
                  color: Color(0xffB7C2FF),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffDBDCDC)),
                  borderRadius: BorderRadius.circular(10)),
              height: 200,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                              padding: EdgeInsets.all(15),
                              margin: EdgeInsets.only(bottom: 10),
                              child: Text("Jakarta (CGK)",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500))),
                          Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Text(
                                "7 April,",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              )),
                          Container(
                            child: Text(
                              "18 : 20",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 25, bottom: 10),
                              height: 2,
                              width: 100,
                              color: Color(0xff133DA9)),
                          Container(
                            child: Text(
                              "Langsung",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w300),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                              padding: EdgeInsets.all(15),
                              margin: EdgeInsets.only(bottom: 10),
                              child: Text("Singapore (SIN)",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500))),
                          Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Text(
                                "7 April,",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              )),
                          Container(
                            child: Text(
                              "21 : 15",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.black12,
                    thickness: 4,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.grey,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 12),
                                child: Text(
                                  "AirAsia",
                                  style: TextStyle(fontSize: 18),
                                ),
                              )
                            ],
                          ),
                        ),
                        Text(
                          "ID7145",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Lihat Detail",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff103CAC),
                              decoration: TextDecoration.underline),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
