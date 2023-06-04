// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:aeroplan/pages/methodsPage.dart';
import 'package:aeroplan/pages/successPage.dart';

class PaymentPage extends StatefulWidget {
  bool pilih;
  String method, gambar;
  PaymentPage(
      {super.key,
      this.pilih = false,
      this.method = "",
      this.gambar = "visa.png"});

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
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xffDBDCDC)),
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.only(top: 30),
            width: 380,
            height: 115,
            child: Column(
              children: [
                Card(
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.only(
                    //         topLeft: Radius.circular(10),
                    //         topRight: Radius.circular(10))),
                    color: Color(0xff7CDBFF),
                    child: SizedBox(
                        width: 380,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Spacer(),
                              Container(
                                margin: EdgeInsets.only(left: 35),
                                child: Column(
                                  children: [
                                    // ignore: avoid_unnecessary_containers
                                    Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            "CGK",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Container(
                                            width: 15,
                                            height: 2,
                                            child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                    color: Color(0xff363939))),
                                          ),
                                          Text("SIN",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700))
                                        ],
                                      ),
                                    ),
                                    Text("7 April 2023")
                                  ],
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 35,
                              )
                            ],
                          ),
                        ))),
                TextButton(
                    style: TextButton.styleFrom(
                        fixedSize: Size(380, 50),
                        backgroundColor: Color(0xffF3F7FB)),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return MethodsPage();
                      }));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 5),
                            child: !widget.pilih
                                ? Text(
                                    "Metode Pembayaran Belum Dipilih",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700),
                                  )
                                : Container(
                                    margin: EdgeInsets.only(left: 5),
                                    child: Row(
                                      children: [
                                        Image(
                                            image: AssetImage('assets/images/' +
                                                widget.gambar)),
                                        Container(
                                          margin: EdgeInsets.only(left: 15),
                                          child: Text(
                                            "Bayar melalui " + widget.method,
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Text(
                              "Pilih",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff4394FB),
                                  fontWeight: FontWeight.w600),
                            ))
                      ],
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            alignment: Alignment.centerLeft,
            child: Text(
              "Optional",
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff797A7B),
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            width: 380,
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                color: Color(0xffF3F7FB),
                border: Border.all(color: Color(0xffDBDCDC)),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Icon(
                            Icons.discount_outlined,
                            size: 30,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "Voucher",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff797A7B),
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Tambah",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff4394FB),
                              fontWeight: FontWeight.w600),
                        ))
                  ],
                ),
                Divider(
                  height: 2,
                  thickness: 2,
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, top: 5),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Anda mempunyai 1 voucher",
                    style: TextStyle(fontSize: 15, color: Color(0xff797A7B)),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 380,
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(top: 40, bottom: 20),
            decoration: BoxDecoration(
                color: Color(0xffF3F7FB),
                border: Border.all(color: Color(0xffDBDCDC)),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "Total Price",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff797A7B),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Text(
                            "Rp 800.200",
                            style: TextStyle(
                                color: Color(0xff363939),
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 30,
                          color: Color(0xff4394FB),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 10, top: 10),
                    width: 500,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: !widget.pilih
                          ? null
                          : () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return SuccessPage();
                              }));
                            },
                      child: Text(
                        "Bayar",
                        style: TextStyle(
                            color: !widget.pilih
                                ? Color(0xffEAEAEA)
                                : Color(0xffF6F6F6),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    )),
              ],
            ),
          ),
          Column(
            children: [
              Text("Dengan melanjutkan Pembayaran, Anda menyetujui"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text("Syarat & Ketentuan"),
                  ),
                  Text("AeroPlane")
                ],
              ),
            ],
          )
        ]),
      )
    ])));
  }
}
