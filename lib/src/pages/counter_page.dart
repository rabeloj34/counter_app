import 'dart:developer';

import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CounterPageState();
}

class CounterPageState extends State<CounterPage> {
  final _textstyle = TextStyle(fontSize: 25);
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Counter'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Número de clicks', style: _textstyle),
              Text('$_contador', style: _textstyle),
            ],
          ),
        ),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: _createButtons());
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _reset),
        Expanded(
            child: SizedBox(
          width: 5.0,
        )),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _remove),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _add)
      ],
    );
  }

  void _add() {
    setState(() {
      _contador++;
    });
  }

  void _remove() {
    setState(() {
      _contador--;
    });
  }

  void _reset() {
    setState(() {
      _contador = 0;
    });
  }
}
