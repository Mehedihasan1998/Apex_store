import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/shoe1.png"),
            Image.asset("assets/images/shoe2.png"),
            Image.asset("assets/images/shoe3.png"),
            Image.asset("assets/images/shoe4.png"),
            Image.asset("assets/images/shoe5.png"),
            Image.asset("assets/images/shoe6.png"),
            Image.asset("assets/images/shoe7.png"),
            Image.asset("assets/images/shoe8.png"),
            Image.asset("assets/images/shoe9.png"),
            Image.asset("assets/images/shoe10.png"),
          ],
        ),
      )
    );
  }
}
