import 'package:flutter/material.dart';
import 'package:salon_app/uidata.dart';
import 'package:salon_app/widgets/button.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "images/main.png",
                      ),
                      fit: BoxFit.contain)),
              height: MediaQuery.of(context).size.height * .45,
            ),
            Text("Find your unique \nnail style",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    height: 1.5,
                    fontSize: 22,
                    letterSpacing: 1.3)),
            Text(
              "",
              textAlign: TextAlign.center,
              style: TextStyle(height: 1.8, letterSpacing: 1.3),
            ),

            Row(children: [
              new ButtonTheme(
                minWidth: 500.0,
                height: 50.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                child: RaisedButton(
                  onPressed: () {Navigator.pushNamed(context, UIData.loginPageRoute);},
                  child: Text("Sign In"),
                ),
              ),
              new ButtonTheme(
                minWidth: 500.0,
                height: 50.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                child: RaisedButton(
                  onPressed: () {Navigator.pushNamed(context, UIData.loginPageRoute);},
                  child: Text("Get Started"),
                  color: Colors.white,
                ),
              )
            ]),

          ],
        ),
      ),
    );
  }
}
