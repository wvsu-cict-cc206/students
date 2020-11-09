import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_app/screens/about_screen.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Future navigateToSubPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AboutScreen()));
  }

@override
Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/Home.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome to the department.",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                RaisedButton(
                  color: Colors.blue,
                  onPressed: () {
                    navigateToSubPage(context);
                  },
                  child: Text("About Us"),
                ),
                RaisedButton(
                  color: Colors.red,
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                  },
                  child: Text("Sign out"),
                ),
              ],
            ),
          )));
}
}


