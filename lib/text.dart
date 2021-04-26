import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class text extends StatelessWidget {

  String  _my ;
  TextStyle _mystyle;

  text(this._my , this._mystyle);

  @override
  Widget build(BuildContext context) {


    return Text(_my , style: _mystyle,);

  }

}