import 'package:flutter/material.dart';

class ServiciosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(),
            child: Column(
              children: <Widget>[
                AppBar(
                  title: Text("Transparent AppBar"),
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.share),
                      onPressed: () {},
                      tooltip: 'Share',
                    ),
                  ],
                ),
                _titulos(),
                _botonesRedondeados()
              ],
            ),
          ),
        ],
      ),
      //bottomNavigationBar: _bottonNavigationBar(context),
    );
  }

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(children: [
          _crearBotonRedondeado(),
          _crearBotonRedondeado(),
        ]),
        TableRow(children: [
          _crearBotonRedondeado(),
          _crearBotonRedondeado(),
        ]),
        TableRow(children: [
          _crearBotonRedondeado(),
          _crearBotonRedondeado(),
        ]),
      ],
    );
  }

//Lista de Widgets para el listad de serviciso
  Widget _crearBotonRedondeado() {
    return Container(
      height: 150.0,
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(216, 210, 209, 1.0),
            blurRadius: 0.8, // has the effect of softening the shadow
            spreadRadius: 2, // has the effect of extending the shadow
            offset: Offset(
              1.0, // horizontal, move right 10
              1.0, // vertical, move down 10
            ),
          )
        ],
      ),
    );
  }

  Widget _bottonNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(59, 48, 146, 1.0),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today,
                size: 30.0,
              ),
              title: Container()),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bubble_chart,
                size: 30.0,
              ),
              title: Container()),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.supervised_user_circle,
                size: 30.0,
              ),
              title: Container())
        ],
      ),
    );
  }

  Widget _fondoApp() {
    final grandiente = Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
    );

    final cajaRosa = Container(
      height: 500.0,
      width: 500.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.6),
            end: FractionalOffset(0.0, 1.0),
            colors: [
              Color.fromRGBO(59, 48, 146, 1.0),
              Color.fromRGBO(0, 167, 117, 1.0)
            ]),
        //shape: BoxShape.circle,
        borderRadius: BorderRadius.circular(280.0),
      ),
    );

    final navegador = Container();

    return Stack(
      children: <Widget>[
        grandiente,
        Positioned(
          top: -250,
          left: -90,
          child: Center(
            child: cajaRosa,
          ),
        )
      ],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 0.0),
        padding: EdgeInsets.all(13.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Table(
                children: [
                  TableRow(children: [
                    FlutterLogo(),
                    Text(
                      'Luis Huarachi Gonzales',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
                ],
              ),
            ]),
      ),
    );
  }
}
