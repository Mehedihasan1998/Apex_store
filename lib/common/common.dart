import 'package:apex_store/services/data_services.dart';
import 'package:flutter/material.dart';

Color primaryColor = Color(0xff0f162e);
Color secondaryColor = Color(0xff00a896);
Color scaffoldBackgroundColor = Colors.white;



Container customListview(Size size) {
  return Container(
    padding: EdgeInsets.all(10),
    height: size.height * 0.3,
    width: double.infinity,
    child: ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: allShoes.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 5,shadowColor: primaryColor,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            height: size.height * 0.3,
            width: size.width * 0.42,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  allShoes[index].img,
                  height: size.height * 0.15,
                  width: size.width * 0.35,
                ),
                Text(
                  allShoes[index].shoeName,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  allShoes[index].brandName,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${allShoes[index].price.toString()}",
                      style: TextStyle(
                        fontSize: 20,
                        color: secondaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward, color: Colors.white,)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}

