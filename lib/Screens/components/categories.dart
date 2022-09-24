import 'package:flutter/material.dart';

import '../../constants.dart';
class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories =["Handbag","Jewellery","Footwear","Dresses"];
  // to place the default tab
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 30,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder:(ctx,index)=>buildCategory(index))
    );
  }
  Widget buildCategory(int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex=index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style:  TextStyle(
                  fontWeight: FontWeight.bold,
                  color:selectedIndex==index? kTextColor:kTextLightColor
              ),
            ),
            const SizedBox(height:kDefaultPadding/4),
            Container(
              height: 2,
              width:25,
              color:selectedIndex==index? Colors.black:Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}