import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class DatePick extends StatefulWidget {
  String tgl = "";
  DatePick({super.key});

  @override
  State<DatePick> createState() => DatePickState();
}

class DatePickState extends State<DatePick> {
  TextEditingController _date = TextEditingController();

  // DateFormat dateFormat;

  @override
  void initState() {
    super.initState();
    // initializeDateFormatting('id');
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 370,
        child: TextFormField(
          controller: _date,
          readOnly: true,
          decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.circular(12)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.circular(12)),
              prefixIcon: const Align(
                widthFactor: 1.5,
                heightFactor: 1.0,
                child: Icon(
                  Icons.calendar_month,
                  size: 40,
                ),
              ),
              labelText: 'Tanggal'),
          style: const TextStyle(fontSize: 20),
          onTap: () async {
            DateTime? pickeddate = await showDatePicker(
                context: context,
                // locale: Locale('id', 'ID'),
                initialDate: DateTime.now(),
                firstDate: DateTime(1990),
                lastDate: DateTime(2100));

            if (pickeddate != null) {
              setState(() {
                _date.text = DateFormat.yMMMMEEEEd().format(pickeddate);
              });
            }
          },
        ));
  }
}
