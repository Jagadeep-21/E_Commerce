import 'package:flutter/material.dart';

import '../../../models/product.dart';
class BuyNow extends StatelessWidget {
  final Product product;
  const BuyNow({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Row(
      children: [
        OutlinedButton(onPressed: (){}, child: Icon(Icons.shopping_cart),style:OutlinedButton.styleFrom(shape: CircleBorder())),
       Expanded(child:  Container(

           padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
           width:size.width*0.6,
           decoration: BoxDecoration(
               shape: BoxShape.rectangle,
               color:product.color,
               borderRadius: BorderRadius.circular(10)

           ),
           child: Center(child: Text("Buy Now",style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white,fontWeight: FontWeight.bold,),),
           )
       ))],
    );
  }
}
