import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_app/screens/home_screen.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}
class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("About this app: I have no idea what to put in this app", style: TextStyle(fontSize: 18),),
          FloatingActionButton(onPressed: () {
            Navigator.pop(context);
          },
            child: Text("Go Back"),)
        ],
      ),
    );
  }
}
