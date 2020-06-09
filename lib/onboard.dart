import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class OnboardPage extends StatefulWidget {
  @override
  _OnboardPageState createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> with SingleTickerProviderStateMixin{
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
                width: 50,
                  decoration: BoxDecoration(

                      image: DecorationImage(

                        image: new AssetImage('assets/img/logo.png'),
                        fit: BoxFit.scaleDown,
                      )
                  ),
                child: FlatButton(
                  padding: EdgeInsets.only(top: 100),
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text(
                    "Login",
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),
                  ),
                ),
              )

            )
        )
    );
  }

}