import 'package:flutter/material.dart';

class FlightClass extends StatefulWidget {
  const FlightClass({super.key});

  @override
  State<FlightClass> createState() => FlightClassState();
}

class FlightClassState extends State<FlightClass> {
  TextEditingController _txt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: TextFormField(
          readOnly: true,
          style: TextStyle(fontSize: 20),
          controller: _txt,
          decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.circular(12)),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.circular(12)),
              prefixIcon: const Align(
                widthFactor: 1.2,
                heightFactor: 1.0,
                child: Icon(
                  Icons.flight_class,
                  size: 40,
                ),
              ),
              labelText: 'Kelas'),
          onTap: () {
            var clasify = simpleDialog(context);
            clasify.then((kelas) => setState(() {
                  _txt.text = kelas;
                }));
          }),
    );
  }
}

Future<String> simpleDialog(BuildContext context) async {
  List<String> passenger = [
    'Ekonomi',
    'Premium Ekonomi',
    'Bisnis Class',
    'First Class'
  ];

  var itemList = passenger
      .map((sum) => SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context, sum);
            },
            child: Text(sum, style: TextStyle(fontSize: 20)),
          ))
      .toList();

  SimpleDialog dialog =
      SimpleDialog(title: Text('Kelas Penerbangan'), children: itemList);

  return await showDialog(
      context: context,
      builder: ((context) {
        return dialog;
      }));
}
