import 'dart:ffi';

import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() {
    return _ContadorPageSate();
  }
}

class _ContadorPageSate extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _cont = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Yara Mano"),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Numero de CLICKS:", style: _estiloTexto),
            Text('$_cont', style: _estiloTexto)
          ],
        )),
        floatingActionButton: crearBotones());
  }

  Widget crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(
          child: Icon(Icons.refresh),
          onPressed: _restart,
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _sustraer,
        ),
        SizedBox(width: 5.0),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _agregar,
        )
      ],
    );
  }

  void _agregar() {
    setState(() {
      _cont++;
    });
  }

  void _sustraer() {
    setState(() {
      _cont--;
    });
  }

  void _restart() {
    setState(() {
      _cont = 0;
    });
  }
}
