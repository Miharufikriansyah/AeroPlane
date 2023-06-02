// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:aeroplan/widgets/addOns.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          SafeArea(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
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
                            "Isi Data",
                            style: TextStyle(
                                fontSize: 25, color: Color(0xffF6F6F6)),
                          ),
                        )
                      ]),
                ),
                Container(
                  margin: EdgeInsets.only(top: 35),
                  // padding: EdgeInsets.all(5),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //nomor 1
                        Container(
                          // margin: EdgeInsets.only(left: 8),
                          child: Row(children: [
                            CircleAvatar(
                              radius: 13,
                              backgroundColor: Color(0xffF6F6F6),
                              child: Text(
                                "1",
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xff0B51A9)),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Text(
                                "Pesan",
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xffF6F6F6)),
                              ),
                            )
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          width: 20,
                          height: 2,
                          child: DecoratedBox(
                              decoration:
                                  BoxDecoration(color: Color(0xffF6F6F6))),
                        ),
                        //nomor 2
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Row(children: [
                            CircleAvatar(
                              radius: 13,
                              backgroundColor:
                                  Color.fromRGBO(246, 246, 246, 0.7),
                              child: Text(
                                "2",
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xff0B51A9)),
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
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          width: 20,
                          height: 2,
                          child: DecoratedBox(
                              decoration:
                                  BoxDecoration(color: Color(0xffF6F6F6))),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Row(children: [
                            CircleAvatar(
                              radius: 13,
                              backgroundColor:
                                  Color.fromRGBO(246, 246, 246, 0.7),
                              child: Text(
                                "3",
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xff0B51A9)),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    padding: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        color: Color(0xffE7EEF6),
                        border: Border.all(color: Color(0xffDBDCDC)),
                        borderRadius: BorderRadius.circular(10)),
                    height: 150,
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
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    )),
                                Container(
                                  child: Text(
                                    "18 : 20",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                    margin:
                                        EdgeInsets.only(top: 25, bottom: 10),
                                    height: 2,
                                    width: 100,
                                    color: Color(0xff133DA9)),
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    "Langsung",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white,
                                ),
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
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    )),
                                Container(
                                  child: Text(
                                    "21 : 15",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        "Data Pemesan (untuk E-Ticket/Voucher)",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 5),
                      child: Text(
                        "Kami akan mengirimkan semua e-ticket/voucher dari pesanan kepada kontak ini",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 500,
                  child: TextButton(
                    onPressed: () => {},
                    style: TextButton.styleFrom(
                        // fixedSize: Size(500, 50),
                        backgroundColor: Color(0xffF3F7FB)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.email_outlined,
                                  color: Color(0xff363939),
                                  size: 30,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Isi Detail Kontak *",
                                    style: TextStyle(
                                        fontSize: 15, color: Color(0xff363939)),
                                  ),
                                )
                              ],
                            )),
                        IconButton(
                            onPressed: () => {},
                            icon: Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text("Detail Traveler",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                  alignment: Alignment.topLeft,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 500,
                  child: TextButton(
                    onPressed: () => {},
                    style: TextButton.styleFrom(
                        // fixedSize: Size(500, 50),
                        backgroundColor: Color(0xffF3F7FB)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.person_outline,
                                  color: Color(0xff363939),
                                  size: 30,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Dewasa 1 *",
                                    style: TextStyle(
                                        fontSize: 15, color: Color(0xff363939)),
                                  ),
                                )
                              ],
                            )),
                        IconButton(
                            onPressed: () => {},
                            icon: Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text("Fasilitas Penerbangan",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                  alignment: Alignment.topLeft,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 8, right: 8),
                  // ignore: prefer_const_constructors
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    color: Color(0xffDBFFDA),
                    child: SizedBox(
                        width: 800,
                        height: 35,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "BELUM TERPILIH",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff336432),
                                fontWeight: FontWeight.w600),
                          ),
                        )),
                  ),
                ),
                AddOns(
                  pilih: "Bagasi",
                  caption:
                      "Kamu dapat membawa 20 kg bagasi per orang. Butuh lebih? ketuk disini",
                  logo: Icons.luggage_rounded,
                  harga: 220000,
                ),
                AddOns(
                  pilih: "Nomor Kursi",
                  caption:
                      "Tidak mau duduk di kursi tengah? \n Amankan kursi anda sekarang",
                  logo: Icons.airline_seat_recline_normal,
                  harga: 24000,
                ),
                AddOns(
                  pilih: "Makanan",
                  caption:
                      "Hemat lebih banyak dengan membeli makanan sekarang daripada di pesawat",
                  logo: Icons.restaurant,
                  harga: 45000,
                ),
                AddOns(
                  pilih: "Keuntungan Tiket",
                  caption:
                      "Ketuk untuk melihat semua keuntungan penerbangan Anda.Mulai dari diskon hingga item gratis",
                  logo: Icons.verified,
                  ada: false,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text("Rincian Harga",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                  alignment: Alignment.topLeft,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(children: [
                              IconButton(
                                  onPressed: () => {},
                                  icon: Icon(
                                    Icons.keyboard_arrow_up,
                                    size: 25,
                                    color: Color(0xff4394FB),
                                  )),
                              Text(
                                "Harga yang anda bayar",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              )
                            ]),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Text("Rp. 709.435",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          )
                        ],
                      ),
                      Divider(
                        height: 3,
                        thickness: 4,
                        color: Color(0xffEAEAEA),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              margin:
                                  EdgeInsets.only(top: 5, left: 15, bottom: 10),
                              child: Text(
                                "Air Asia (Dewasa)x1",
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xff8E9090)),
                              )),
                          Container(
                            margin:
                                EdgeInsets.only(top: 5, right: 15, bottom: 10),
                            child: Text(
                              "Rp. 709.435",
                              style: TextStyle(
                                  color: Color(0xff8E9090), fontSize: 15),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        fixedSize: Size(380, 50),
                        backgroundColor: Color(0xff4394FB)),
                    child: Text(
                      "Lanjutkan",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
