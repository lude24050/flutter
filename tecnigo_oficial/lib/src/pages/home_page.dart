import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        /*decoration: new BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(59, 48, 146, 20),
          Color.fromRGBO(0, 167, 117, 1)
        ], stops: [
          0.7,
          0.9
        ], begin: FractionalOffset.topLeft, end: FractionalOffset.bottomRight)),
*/
        padding: EdgeInsets.only(top: 30.0),
        color: Colors.white,
        child: Center(
          child: Column(
            children: <Widget>[
              SafeArea(
                  child: Container(
                      height: 200.0,
                      child: Image.asset('assets/img/icono_logo.PNG'))),
              Center(
                child: Text('Continuar con'),
              ),
              SizedBox(height: 15.0),
              RaisedButton(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
                  child: Text('FACEBOOK'),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0)),
                elevation: 2.0,
                color: Color.fromRGBO(59, 48, 146, 20),
                textColor: Colors.white,
                onPressed: () {
                  print('mi registro');
                },
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
                  child: Text('GMAIL'),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0)),
                elevation: 2.0,
                color: Color.fromRGBO(59, 48, 146, 20),
                textColor: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, 'servicios');
                },
              ),
              SizedBox(height: 20.0),
              Text(
                'REGISTRATE',
                style: TextStyle(
                    fontFamily: 'MidPoint',
                    fontSize: 18.0,
                    color: Color.fromRGBO(0, 167, 117, 1),
                    //fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
