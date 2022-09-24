import 'package:flutter/material.dart';

class Counter_count extends StatefulWidget {
  const Counter_count({Key? key}) : super(key: key);

  @override
  State<Counter_count> createState() => _Counter_countState();
}

class _Counter_countState extends State<Counter_count> {
  int counts = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        getIcon(
            Icons.remove,
            () => setState(() {
                  if(counts>1)counts--;
                })),
        Text(
          counts.toString(),
          style: TextStyle(fontSize: 20),
        ),
        getIcon(
            Icons.add,
            () => setState(() {
                  counts++;
                })),

      ],
    );
  }

  Widget getIcon(IconData icon, VoidCallback press) {
    return ElevatedButton(
      onPressed: press,
      child: Icon(icon),
      style: ElevatedButton.styleFrom(
          shape: CircleBorder(), alignment: Alignment.center),
    );
  }
}
