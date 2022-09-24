import 'package:flutter/material.dart';

import '../../../constants.dart';
class ColorDot extends StatelessWidget {
  final Color color;
  final bool isselected;
  const ColorDot({Key? key, required this.color,  this.isselected=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.5),
      margin: EdgeInsets.only(top:kDefaultPadding/2,left: kDefaultPadding/3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          border:Border.all(color: isselected?color:Colors.transparent),
          shape: BoxShape.circle

      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle

        ),
      ),

    );
  }
}
