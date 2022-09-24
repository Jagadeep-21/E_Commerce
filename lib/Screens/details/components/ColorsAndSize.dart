import 'package:flutter/material.dart';
import 'package:restaurentapp/models/product.dart';

import '../../../colors.dart';
import 'colorDot.dart';
class ColorAndSize extends StatelessWidget {
  final Product product;
  const ColorAndSize({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("color"),
              Row(
                children: [
                  ColorDot(
                    color: Custom_Colors.red,
                    isselected: true,
                  ),
                  ColorDot(color: Color(0xff00FF00)),
                  ColorDot(color: Color(0xffb76e79)),
                  SizedBox(
                    width: 20,
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text( "Size"),
              RichText(text: TextSpan(style: TextStyle(color: Colors.black),children: [TextSpan(text: "${product.size}",style:Theme.of(context).textTheme.headline4?.copyWith(color: Colors.black)),TextSpan(text: "cm")]))
            ],
          ),
        ),

      ],
    );
  }
}
