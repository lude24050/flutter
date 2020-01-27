import 'package:flutter/material.dart';

class FiltroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('mi filtro'),
      ),
    );
  }

  Widget _Fondo() {
    final fondo = Container(
      child: SafeArea(
        child: Text('que fue mano '),
      ),
    );

    return Stack(
      children: <Widget>[fondo],
    );
  }
}
