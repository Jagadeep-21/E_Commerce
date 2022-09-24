import 'package:flutter/material.dart';
import 'package:restaurentapp/Screens/details/details.dart';
import 'package:restaurentapp/models/product.dart';
import '../../constants.dart';
import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Welcome",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Categories(),
        const SizedBox(
          height: 20,
        ),

        Expanded(
            child: GridView.builder(
                itemCount: prod.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    //no of columns required in grid screen layput
                    crossAxisCount: 2,
                    // it is the size  of the child should visible in the screen
                    childAspectRatio: 0.75,
                    mainAxisSpacing: kDefaultPadding,
                    crossAxisSpacing: kDefaultPadding),
                itemBuilder: (context, index) => ItemCard(
                      product: prod[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                    product: prod[index],
                                  ))),
                    )))
      ],
    );
  }
}
