import 'package:flutter/material.dart';

class BoxMethod extends StatelessWidget {
  Row? isi;
  String jenis;

  BoxMethod({super.key, this.isi, required this.jenis});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(top: 10, bottom: 10),
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
                  jenis,
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w500),
                ),
              ),
              Icon(
                Icons.keyboard_arrow_up,
                size: 35,
                color: Color(0xff363939),
              )
            ],
          ),
          Container(
            child: isi,
          )
        ],
      ),
    );
  }
}
