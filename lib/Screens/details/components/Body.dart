import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:restaurentapp/Screens/details/components/Description.dart';
import 'package:restaurentapp/Screens/details/components/colorDot.dart';
import 'package:restaurentapp/Screens/details/components/counter.dart';
import 'package:restaurentapp/Screens/details/components/productwithimage.dart';
import 'package:restaurentapp/constants.dart';

import '../../../colors.dart';
import '../../../models/product.dart';
import 'BuyNowAddToCart.dart';
import 'ColorsAndSize.dart';

class BodyDetail extends StatelessWidget {
  final Product product;
  const BodyDetail({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      // physics: NeverScrollableScrollPhysics(),
      child: SizedBox(
        height: size.height,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: size.height * 0.35),
              padding: EdgeInsets.only(
                  top: size.height * 0.1,
                  left: kDefaultPadding,
                  right: kDefaultPadding),
              height: 500,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ColorAndSize(product: product),

                  Description(s: "lLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                 SizedBox(height: size.height*0.04,),
                  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Counter_count(),
                     ElevatedButton(onPressed: (){}, child: Icon(Icons.favorite),style: ElevatedButton.styleFrom(shape:CircleBorder(),primary: Colors.redAccent,onPrimary: Colors.white),)
                   ],
                 ),
                  SizedBox(height: size.height*0.08,),
                  BuyNow(product: product,)


                ],
              ),
            ),
            ProductWithImage(
              product: product,
            )
          ],
        ),
      ),
    );
  }
}
