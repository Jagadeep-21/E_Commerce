

import 'package:flutter/material.dart';

import '../../models/product.dart';
import 'components/Body.dart';
class DetailsScreen extends StatelessWidget {
   final Product product;
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: getappbar(context),
      body: BodyDetail(product: product,),
    );
  }
   AppBar getappbar(BuildContext context){
     return AppBar(
       backgroundColor: product.color,
       elevation: 0,
       leading: IconButton(
         icon: Icon(Icons.arrow_back_ios,),
         onPressed: ()=>Navigator.pop(context),
       ),
       actions: [
         IconButton(onPressed: (){}, icon: Icon(Icons.search)),
         IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
       ],
     );
   }
}

