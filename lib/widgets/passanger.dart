import 'package:flutter/material.dart';

class Passenger extends StatefulWidget {
  const Passenger({super.key});

  @override
  State<Passenger> createState() => PassengerState();
}

class PassengerState extends State<Passenger> {
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
              widthFactor: 1.5,
              heightFactor: 1.0,
              child: Icon(
                Icons.people,
                size: 40,
              ),
            ),
            labelText: 'Penumpang'),
        onTap: () {
          var sum = simpleDialog(context);
          sum.then((pass) => {
                setState(() {
                  _txt.text = pass;
                })
              });
        },
      ),
    );
  }
}

Future<String> simpleDialog(BuildContext context) async {
  List<String> passenger = [];
  for (var i = 1; i <= 10; i++) {
    passenger.add("$i Orang");
  }

  var itemList = passenger
      .map((sum) => SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context, sum);
            },
            child: Text(sum, style: TextStyle(fontSize: 20)),
          ))
      .toList();

  SimpleDialog dialog =
      SimpleDialog(title: Text('Jumlah Penumpang'), children: itemList);

  return await showDialog(
      context: context,
      builder: ((context) {
        return dialog;
      }));
}
