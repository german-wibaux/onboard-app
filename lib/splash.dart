import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin{
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  double screenWidth;
  double screenHeight;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        key: _scaffoldKey,
        body: Center(
            child: Container(
              width: screenWidth,
              height: screenHeight,
              color: Color.fromRGBO(71,36,245,1),
              child: Container(
                width: 100,
                height: 50,
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/onboard');
                  },
                  child: Text(
                      "Onboard screen",
                      style: new TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      )
                  ),
                ),
              )
            )
        )
    );
  }

}