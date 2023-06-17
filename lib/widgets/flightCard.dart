import 'package:flutter/material.dart';
import 'package:aeroplan/pages/checkoutPage.dart';

class FlightCard extends StatefulWidget {
  String airline, price, depart, arrive, time1, time2, duration, kota1, kota2;

  FlightCard(
      {super.key,
      required this.airline,
      required this.price,
      required this.depart,
      required this.arrive,
      required this.time1,
      required this.time2,
      required this.duration,
      required this.kota1,
      required this.kota2});

  @override
  State<FlightCard> createState() => _FlightCardState();
}

class _FlightCardState extends State<FlightCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Card(
        color: Color(0xffE7EEF6),
        child: InkWell(
          onTap: () => {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return CheckoutPage(
                asal: widget.depart,
                tujuan: widget.arrive,
                berangkat: widget.time1,
                tiba: widget.time2,
                kota1: widget.kota1,
                kota2: widget.kota2,
                harga: widget.price,
              );
            }))
          },
          child: SizedBox(
            width: 500,
            height: 175,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.white,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 12),
                                child: Text(
                                  widget.airline,
                                  style: TextStyle(fontSize: 20),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "IDR " + this.widget.price,
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xff133DA9)),
                              ),
                              Text(
                                "/orang",
                                style: TextStyle(fontSize: 18),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 220,
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Text(
                                widget.time1,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                            ),
                            Container(
                              width: 60,
                              height: 40,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Color(0xff363939),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    widget.depart,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 5),
                                child: Text(
                                  widget.duration,
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                              Container(
                                width: 75,
                                height: 2,
                                child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Color(0xff133DA9))),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  "Langsung",
                                  style: TextStyle(fontSize: 15),
                                ),
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Text(
                                widget.time2,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                            ),
                            Container(
                              width: 53,
                              height: 40,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Color(0xff363939),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Container(
                                  padding: EdgeInsets.all(9),
                                  child: Text(
                                    widget.arrive,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
