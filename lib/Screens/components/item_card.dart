import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/product.dart';
class ItemCard extends StatelessWidget {
  final Product? product;
  final VoidCallback press;
  const ItemCard({Key? key,  this.product,  required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          Expanded(
            child: Container(
                padding: const EdgeInsets.all(kDefaultPadding),
                height: 180,
                width: 170,
                decoration: BoxDecoration(
                    color:product?.color,
                    borderRadius: BorderRadius.circular(16)
                ) ,
                child:Hero(
                    tag: "${product?.id}",
                    child: Image.asset(product!.image,fit: BoxFit.cover,))
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/4),
              child: Text(product!.title,style: const TextStyle(color: kTextLightColor),)),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/4),
              child: Text("\$${product!.price}",
                style:const  TextStyle(color: kTextColor),))

        ],
      ),
    );
  }
}