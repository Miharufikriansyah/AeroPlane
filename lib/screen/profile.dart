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
          ],
        ),
      ),
    );
  }
}
