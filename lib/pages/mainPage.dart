import 'package:flutter/material.dart';
import 'package:aeroplan/screen/home.dart';
import 'package:aeroplan/screen/profile.dart';
import 'package:aeroplan/screen/tiket.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: SafeArea(
        child: _tabPages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedFontSize: 18,
          unselectedFontSize: 18,
          iconSize: 40,
          selectedItemColor: Color(0xff4394FB),
          unselectedItemColor: Color(0xff797A7B),
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.all(10),
                child: Icon(Icons.flight),
              ),
              label: 'Penerbangan',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.all(10),
                child: Icon(Icons.airplane_ticket_rounded),
              ),
              label: 'Tiket',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.all(10),
                child: Icon(Icons.person),
              ),
              label: 'Profil',
              backgroundColor: Colors.blue,
            )
          ]),
    );
  }

  static const List _tabPages = [HomePage(), Tiket(), Profile()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
