import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:aeroplan/pages/mainPage.dart';
import 'package:aeroplan/pages/loginPage.dart';
import 'package:aeroplan/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // initFirebase();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      // localizationsDelegates: [
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate
      // ],
      // supportedLocales: [Locale('en', ''), Locale('id', '')],
      home: LoginPage(),
    );
  }
}
