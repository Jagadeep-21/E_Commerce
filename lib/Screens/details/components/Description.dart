import 'package:flutter/material.dart';
import 'package:restaurentapp/constants.dart';

class Description extends StatelessWidget {
  final bool is_String_long = false;
  final String s;
  const Description( {Key? key, required this.s}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var len =s.length;
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
        child:len>100?
        Text(s.substring(0,400)):Text(s));
  }
}
