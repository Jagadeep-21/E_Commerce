import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product.dart';
class ProductWithImage extends StatelessWidget {
  final Product product ;
  const ProductWithImage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Comfortable Handy bag",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(product.title,
              style: Theme.of(context).textTheme.headline4?.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold)),
          Row(
            children: [
              RichText(
                  text: TextSpan(children:
                  [TextSpan(text: "price\n"),
                    TextSpan(text: "\$${product.price}",style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.white,fontWeight: FontWeight.bold))],)),
              Expanded(child:Hero(tag:"${product.id
    }",child: Image.asset(product.image,fit: BoxFit.fitWidth,)))
            ],
          )
        ],
      ),
    );
  }
}
