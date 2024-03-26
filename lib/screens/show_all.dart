import 'package:apex_store/common/common.dart';
import 'package:flutter/material.dart';

class ShowAllShoes extends StatelessWidget {
  const ShowAllShoes({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        title: Image.asset(
          "assets/images/nike.png",
          fit: BoxFit.fitHeight,
          height: size.height * 0.1,
          width: size.width * 0.3,
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: secondaryColor,
            )),
        centerTitle: true,
        backgroundColor: primaryColor,
        elevation: 5,
        actions: [
          Icon(
            Icons.brightness_4,
            color: secondaryColor,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              customListTile(size),
            ],
          ),
        ),
      ),
    ));
  }
}
