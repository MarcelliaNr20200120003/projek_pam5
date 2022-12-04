import 'package:flutter/material.dart';
import 'package:projek_pam5/screens/constants.dart';
import 'package:projek_pam5/screens/search_box.dart';
import 'package:projek_pam5/details/details_screen.dart';
import 'package:projek_pam5/models/model_produk.dart';

import 'category.dart';
import 'produk.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          SearchBox(
            onChanged: (value) {},
          ),
          Category(),
          SizedBox(height: kDefaultPadding / 2),
          Expanded(
              child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 70),
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
              ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                        itemIndex: index,
                        product: products[index],
                        press: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => DetailsScreen(
                          //       product: products[index],
                          //     ),
                          //   ),
                          // );
                        },
                      ))
            ],
          ))
        ],
      ),
    );
  }
}
