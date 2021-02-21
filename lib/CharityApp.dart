import 'package:charity_app/config/routes.dart';
import 'package:flutter/material.dart';

class CharityApp extends StatefulWidget {
  @override
  _CharityAppState createState() => _CharityAppState();
}

class _CharityAppState extends State<CharityApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment(0.0, -0.5),
        children: [
          Container(
              // height: double.infinity,
              child: Image.asset(
            'assets/splash.jpg',
            fit: BoxFit.cover,
          )),
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                Text(
                  'Share Some Love',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30.0),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Routes.firstPage);
                  },
                  child: Text('Get Started'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.amber)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
