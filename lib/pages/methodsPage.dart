import 'package:flutter/material.dart';
import 'package:aeroplan/widgets/boxMethod.dart';
import 'package:aeroplan/widgets/method.dart';

class MethodsPage extends StatefulWidget {
  MethodsPage({super.key});

  @override
  State<MethodsPage> createState() => _MethodsPageState();
}

class _MethodsPageState extends State<MethodsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
                height: 100,
                width: 1000,
                child: Image(
                  image: AssetImage('assets/images/bg-method.png'),
                  fit: BoxFit.fill,
                )),
            SafeArea(
                child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 30),
                  child: Row(
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
                          "Pilih Metode Pembayaran",
                          style:
                              TextStyle(fontSize: 25, color: Color(0xffF6F6F6)),
                        ),
                      )
                    ],
                  ),
                ),
                BoxMethod(
                  jenis: "Transfer Virtual Account",
                  isi: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Method(
                        nama: "Mandiri",
                        logo: "mandiri.png",
                      ),
                      Method(nama: "BRI", logo: "bri.png"),
                      Method(nama: "BCA", logo: "bca.png"),
                      Method(nama: "BNI", logo: "bni.png")
                    ],
                  ),
                ),
                BoxMethod(
                  jenis: "E-Money",
                  isi: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Method(
                        nama: "Dana",
                        logo: "dana.png",
                      ),
                      Method(nama: "OVO", logo: "ovo.png"),
                      Method(nama: "Gopay", logo: "gopay.png"),
                      Method(nama: "Shopeepay", logo: "spay.png")
                    ],
                  ),
                ),
                BoxMethod(
                  jenis: "Minimarket",
                  isi: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Method(
                          nama: "Indomaret",
                          logo: "indomaret.png",
                        ),
                      ),
                      Method(nama: "Alfamart", logo: "alfa.png"),
                    ],
                  ),
                ),
                Container(
                  width: 380,
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: Color(0xffF3F7FB),
                      border: Border.all(color: Color(0xffDBDCDC)),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Image(image: AssetImage('assets/images/visa.png')),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(bottom: 5),
                                    child: Text(
                                      "Kartu Kredit",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xff363939),
                                          fontWeight: FontWeight.w500),
                                    )),
                                Text(
                                  "Bayar menggunakan kartu kredit",
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xff8E9090)),
                                )
                              ]),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
