import 'package:apex_store/common/common.dart';
import 'package:flutter/material.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              customListTile(size),
            ],
          ),
        ),
      )
    );
  }
}
