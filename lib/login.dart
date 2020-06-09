import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  double screenWidth;
  double screenHeight;
  GlobalKey<FormState> _key = GlobalKey<FormState>();
  RegExp emailRegExp =
//  Email validation
//  new RegExp(r'^\w+[\w-\.]*\@\w+((-\w+)|(\w*))\.[a-z]{2,3}$');

  new RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]');
  var _username;

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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 15.0),
              height: screenHeight * 0.23,
              width: screenWidth * 0.6,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: new AssetImage('assets/img/login.png'),
                    fit: BoxFit.contain,
                  )
              )
            ),
            Container(
                margin: EdgeInsets.only(left: 30.0, bottom: 30),
                width: screenWidth * 0.6,
                child: Text('Bienvenido'),
//                decoration: BoxDecoration(
//                    image: DecorationImage(
//                      image: new AssetImage('assets/img/login_body.png'),
//                      fit: BoxFit.contain,
//                    )
//                )
            ),
            Container(
              margin: EdgeInsets.only(left: 30.0),
              width: screenWidth * 0.43,
              child: Text('Te guiaremos a través '
                          'de unos simples pasos '
                          'para que puedas hacerte '
                          'cliente'),
//                decoration: BoxDecoration(
//                    image: DecorationImage(
//                      image: new AssetImage('assets/img/login_body.png'),
//                      fit: BoxFit.contain,
//                    )
//                )
            ),
            Align(
            alignment: Alignment.center,
              child: Container(

              width: screenWidth * 0.85,
              padding: EdgeInsets.only(left: 10.0, top: 80),
              child: Form(
              key: _key,
              child: Column(
              children: <Widget>[
              TextFormField(

              validator: (text) {
              if (text.length == 0) {
              return "Este campo usuario es requerido";
              } else if (!emailRegExp.hasMatch(text)) {
              return "El formato para usuario no es correcto";
              }
              return null;
              },
              keyboardType: TextInputType.emailAddress,
              maxLength: 50,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
              hintText: 'Ingrese su Usuario',
              labelText: 'Ingresa el correo electronico',
              counterText: '',
              ),
              onSaved: (text) => _username = text,
              ),

          ],
        )
    )
     )
          )
      ])



//        Center(
//            child: Container(
//              color: Color.fromRGBO(255,255,255,1),
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: <Widget>[

//                ],
//              )
//
//
//
//            )
//        )
    );
  }

}