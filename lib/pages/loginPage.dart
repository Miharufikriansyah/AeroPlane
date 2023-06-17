import 'package:flutter/material.dart';
import 'package:aeroplan/widgets/inputField.dart';
import 'package:getwidget/getwidget.dart';
import 'mainPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 75, bottom: 15),
                      child: Text(
                        "Selamat Datang di AeroPlane",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      width: 300,
                      child: Text(
                        "Silahkan masuk terlebih dahulu untuk mengakses AeroPlane",
                        style: TextStyle(fontSize: 20, height: 1.3),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Email",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    InputField(
                        inputLabel: "yourname@email.com", prefIcon: Icons.email)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Password",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    InputField(
                      inputLabel: "***",
                      suffIcon: Icons.visibility,
                      prefIcon: Icons.lock,
                      pass: true,
                    ),
                    TextButton(
                        onPressed: () => {},
                        child: Text(
                          "Lupa Password?",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ))
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return MainPage();
                          }));
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xff103CAC),
                            fixedSize: Size(380, 50)),
                        child: Text(
                          "Masuk",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Belum mempunyai akun?",
                            style: TextStyle(fontSize: 18),
                          ),
                          TextButton(
                              onPressed: () => {},
                              child: Text(
                                "Daftar di sini",
                                style: TextStyle(fontSize: 18),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "Atau masuk melalui",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 40),
                            width: 120,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.black12),
                                borderRadius: BorderRadius.circular(12)),
                            child: GFIconButton(
                                icon: Image.network(
                                  'https://flutter-ui.s3.us-east-2.amazonaws.com/social_media_buttons/google-icon.png',
                                  fit: BoxFit.cover,
                                ),
                                type: GFButtonType.transparent,
                                size: GFSize.LARGE,
                                onPressed: () {}),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 40),
                            width: 120,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.black12),
                                borderRadius: BorderRadius.circular(12)),
                            child: GFIconButton(
                                icon: Icon(Icons.facebook),
                                type: GFButtonType.transparent,
                                size: GFSize.LARGE,
                                onPressed: () {}),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
