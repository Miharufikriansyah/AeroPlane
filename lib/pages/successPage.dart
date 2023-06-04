import 'package:flutter/material.dart';
import 'package:aeroplan/pages/mainPage.dart';

class SuccessPage extends StatefulWidget {
  SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0B51A9),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 10, bottom: 30),
            child: IconButton(
              icon: Icon(
                Icons.close,
                size: 40,
                color: Color(0xffF6F6F6),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return MainPage();
                }));
              },
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return MainPage();
              }));
            },
            child: Container(
              margin: EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Text(
                    "Pembayaran Sukses",
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w700),
                  ),
                  Image(image: AssetImage('assets/images/successful.gif')),
                  Container(
                    child: Text(
                      "Tap untuk melihat E-Ticket",
                      style: TextStyle(
                          fontSize: 25,
                          color: Color(0xffF6F6F6),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 320,
                    height: 3,
                    child: DecoratedBox(
                        decoration: BoxDecoration(color: Color(0xffF6F6F6))),
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
