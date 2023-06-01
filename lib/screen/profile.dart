import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 200,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffDBDCDC)),
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffE7EEF6)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xffD9D9D9),
                          child: Text(
                            "A",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                        Container(
                          height: 80,
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Alex",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Terverifikasi",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                "Status Keanggotaan : Bronze",
                                style: TextStyle(fontSize: 18),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: TextButton(
                        onPressed: () => '',
                        style: TextButton.styleFrom(
                            fixedSize: Size(380, 50),
                            backgroundColor: Color(0xff4394FB)),
                        child: Text(
                          "Lihat Profile Saya",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5, bottom: 25),
                      child: Text(
                        "Opsi Pembayaran Saya",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff5F5F5F),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffDBDCDC)),
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.credit_card,
                                      size: 50,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'ATM',
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Icon(Icons.arrow_forward)
                            ],
                          ),
                          Divider(
                            color: Color(0xffDBDCDC),
                            thickness: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.airplanemode_active,
                                      size: 50,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'AeroPlane Pay',
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Icon(Icons.arrow_forward)
                            ],
                          ),
                          Divider(
                            color: Color(0xffDBDCDC),
                            thickness: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.phone_android,
                                      size: 50,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Virtual Account',
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Icon(Icons.arrow_forward)
                            ],
                          ),
                          Divider(
                            color: Color(0xffDBDCDC),
                            thickness: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.store,
                                      size: 50,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Merchant',
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Icon(Icons.arrow_forward)
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5, bottom: 25),
                      child: Text(
                        "Fitur Anggota",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff5F5F5F),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffDBDCDC)),
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.monetization_on,
                                      size: 50,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Pengembalian Uang',
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Icon(Icons.arrow_forward)
                            ],
                          ),
                          Divider(
                            color: Color(0xffDBDCDC),
                            thickness: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.question_mark,
                                      size: 50,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Pusat Bantuan',
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Icon(Icons.arrow_forward)
                            ],
                          ),
                          Divider(
                            color: Color(0xffDBDCDC),
                            thickness: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.settings,
                                      size: 50,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Pengaturan',
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Icon(Icons.arrow_forward)
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
