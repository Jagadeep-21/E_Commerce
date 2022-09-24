import 'package:flutter/material.dart';

import '../components/body.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:getAppBar(),
      body:Body()
    );
  }
}
AppBar getAppBar(){
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0 ,
    title: Text('E_Commerce',style: TextStyle(color: Colors.black),),
    centerTitle: true,
    leading: IconButton(
      onPressed: (){},
      icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
    ),
    actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.black,)),
      IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart,color: Colors.black,))],
  );
}
