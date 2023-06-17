import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  String inputLabel;
  IconData? prefIcon;
  IconData? suffIcon;
  bool pass;
  // TextEditingController inputControl;

  InputField(
      {super.key,
      required this.inputLabel,
      this.prefIcon,
      this.suffIcon,
      this.pass = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 370,
        child: TextFormField(
          obscureText: pass,
          decoration: InputDecoration(
              fillColor: Color(0xffF3F7FB),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.circular(12)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.circular(12)),
              prefixIcon: Align(
                widthFactor: 1.5,
                heightFactor: 1.0,
                child: Icon(
                  prefIcon,
                  size: 30,
                ),
              ),
              suffixIcon: Align(
                widthFactor: 1.5,
                heightFactor: 1.0,
                child: Icon(
                  suffIcon,
                  size: 30,
                ),
              ),
              labelText: inputLabel),
          style: const TextStyle(fontSize: 20),
        ));
  }
}
