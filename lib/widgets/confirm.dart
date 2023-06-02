import 'package:flutter/material.dart';
import 'package:aeroplan/pages/paymentPage.dart';

Confirm(BuildContext context) {
  Widget reCheckBut = Container(
      margin: EdgeInsets.only(bottom: 10),
      width: 500,
      height: 50,
      child: TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text(
          "Periksa Kembali",
          style: TextStyle(fontSize: 18, color: Color(0xff4394FB)),
        ),
        style: TextButton.styleFrom(backgroundColor: Color(0xffEEF5FF)),
      ));
  Widget confirmBut = Container(
      margin: EdgeInsets.only(bottom: 5),
      width: 500,
      height: 50,
      child: TextButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return PaymentPage();
            }));
          },
          child: Text(
            "Lanjut Pembayaran",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          style: TextButton.styleFrom(backgroundColor: Color(0xff4394FB))));

  AlertDialog dialog = AlertDialog(
    title: Text(
      "Apakah anda sudah yakin?",
      style: TextStyle(
          color: Color(0xff363939), fontWeight: FontWeight.w700, fontSize: 20),
    ),
    content: Text(
      "Pastikan anda sudah mengisi data dengan benar,anda tidak dapat mengubah data setelah melakukan proses pembayaran",
      style: TextStyle(
          color: Color(0xff797A7B), fontSize: 14, fontWeight: FontWeight.w500),
    ),
    actions: [reCheckBut, confirmBut],
  );

  showDialog(
      context: context,
      builder: ((context) {
        return dialog;
      }));
}
