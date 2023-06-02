import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(children: [
      Container(
          height: 165,
          width: 1000,
          child: Image(
            image: AssetImage('assets/images/bg-data.png'),
            fit: BoxFit.fill,
          )),
      SafeArea(
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: IconButton(
                  onPressed: () => {Navigator.pop(context)},
                  icon: Icon(
                    Icons.arrow_back,
                    size: 38,
                    color: Color(0xffF6F6F6),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "Konfirmasi Pembayaran",
                  style: TextStyle(fontSize: 25, color: Color(0xffF6F6F6)),
                ),
              )
            ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 35),
            // padding: EdgeInsets.all(5),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              //nomor 1
              Container(
                // margin: EdgeInsets.only(left: 8),
                child: Row(children: [
                  CircleAvatar(
                    radius: 13,
                    backgroundColor: Color.fromRGBO(57, 174, 54, 0.5),
                    child: Icon(
                      Icons.check,
                      color: Color.fromRGBO(246, 246, 246, 0.5),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Text(
                      "Pesan",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(246, 246, 246, 0.7)),
                    ),
                  )
                ]),
              ),
              Container(
                margin: EdgeInsets.only(left: 5),
                width: 20,
                height: 2,
                child: DecoratedBox(
                    decoration: BoxDecoration(color: Color(0xffF6F6F6))),
              ),
              //nomor 2
              Container(
                margin: EdgeInsets.only(left: 5),
                child: Row(children: [
                  CircleAvatar(
                    radius: 13,
                    backgroundColor: Color(0xffF6F6F6),
                    child: Text(
                      "2",
                      style: TextStyle(fontSize: 20, color: Color(0xff0B51A9)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Text(
                      "Pembayaran",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(246, 246, 246, 0.7)),
                    ),
                  )
                ]),
              ),
              //nomor 3
              Container(
                margin: EdgeInsets.only(left: 5),
                width: 20,
                height: 2,
                child: DecoratedBox(
                    decoration: BoxDecoration(color: Color(0xffF6F6F6))),
              ),
              Container(
                margin: EdgeInsets.only(left: 5),
                child: Row(children: [
                  CircleAvatar(
                    radius: 13,
                    backgroundColor: Color.fromRGBO(246, 246, 246, 0.7),
                    child: Text(
                      "3",
                      style: TextStyle(fontSize: 20, color: Color(0xff0B51A9)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Text(
                      "E-Ticket",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(246, 246, 246, 0.7)),
                    ),
                  )
                ]),
              ),
            ]),
          ),
        ]),
      )
    ])));
  }
}
