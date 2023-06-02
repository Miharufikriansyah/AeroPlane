import 'package:flutter/material.dart';

class AddOns extends StatelessWidget {
  String pilih, caption;
  int? harga;
  IconData? logo;
  bool ada;

  AddOns(
      {super.key,
      required this.pilih,
      required this.caption,
      this.harga = 0,
      this.logo,
      this.ada = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, bottom: 10, right: 10),
      width: 500,
      child: TextButton(
          onPressed: () => {},
          style: TextButton.styleFrom(
              // fixedSize: Size(500, 50),
              backgroundColor: Color(0xffF3F7FB)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: [
                          Icon(
                            logo,
                            color: Color(0xff363939),
                            size: 30,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              pilih,
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xff363939)),
                            ),
                          )
                        ],
                      )),
                  IconButton(
                      onPressed: () => {}, icon: Icon(Icons.arrow_forward_ios))
                ],
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      width: 280,
                      child: Text(
                        caption,
                        style: TextStyle(color: Color(0xff57595A)),
                      ),
                    ),
                    Visibility(
                        visible: ada,
                        child: Column(
                          children: [
                            Container(
                              child: Text(
                                "Mulai dari",
                                style: TextStyle(color: Color(0xff57595A)),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text(
                                "Rp.$harga",
                                style: TextStyle(
                                    fontSize: 17, color: Color(0xff133DA9)),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              )
            ],
          )),
    );
  }
}
