import 'package:flutter/material.dart';
import 'package:aeroplan/pages/paymentPage.dart';

class Method extends StatelessWidget {
  String nama, logo;

  Method({super.key, required this.nama, required this.logo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 70,
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
              color: Color(0xffF3F7FB),
              border: Border.all(color: Color(0xffDBDCDC)),
              borderRadius: BorderRadius.circular(10)),
          child: TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return PaymentPage(
                  pilih: true,
                  method: nama,
                  gambar: logo,
                );
              }));
            },
            child: Image(
              image: AssetImage('assets/images/' + logo),
              fit: BoxFit.fitHeight,
              width: 100,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10, bottom: 10),
          child: Text(
            nama,
            style: TextStyle(
                fontSize: 18,
                color: Color(0xff57595A),
                fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
