import 'package:flutter/material.dart';
import 'package:projek_pam5/screens/constants.dart';

import 'components/body.dart';

class ProdukScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: Color.fromARGB(255, 168, 169, 180),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 247, 227, 227),
      elevation: 0,
      centerTitle: false,
      title: Text('Dashboard'),
      actions: <Widget>[
        IconButton(
          icon: Image.asset("assets/icons/icons.png"),
          onPressed: () {},
        ),
      ],
    );
  }
}
