import 'package:apex_store/screens/details.dart';
import 'package:apex_store/services/data_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = Color(0xff124559);
Color secondaryColor = Color(0xff84a59d);
Color scaffoldBackgroundColor = Colors.white;

int currentIndex = 0;

String maleAvaterImage = "https://static.vecteezy.com/system/resources/previews/024/183/535/original/male-avatar-portrait-of-a-young-man-with-glasses-illustration-of-male-character-in-modern-color-style-vector.jpg";

myStyle(double fs, [Color ?clr, FontWeight ?fw]){
  return GoogleFonts.nunito(
    fontSize: fs,
    color: clr,
    fontWeight: fw,
  );
}



Container customListview(Size size) {
  return Container(
    padding: EdgeInsets.all(10),
    height: size.height * 0.3,
    width: double.infinity,
    child: ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (builder)=> DetailsPage(index: index,)));
          },
          child: Card(
            elevation: 5,
            shadowColor: primaryColor,
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
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    allShoes[index].brandName,
                    style: TextStyle(
                      fontSize: 15,
                      color: secondaryColor,
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
                          color: Colors.white,
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
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ),
  );
}

ListView customListTile(Size size) {
  return ListView.builder(
    itemCount: allShoes.length,
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemBuilder: (context, index) {
      return Stack(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Container(
                  height: size.height * 0.3,
                  width: size.width * 1,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: Image.asset(
                    allShoes[index].img,
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            allShoes[index].shoeName,
                            style: TextStyle(
                                color: Colors.greenAccent,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Text(
                                " ${allShoes[index].rating.toString()}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        allShoes[index].brandName,
                        style: TextStyle(
                          color: secondaryColor,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        "\$${allShoes[index].price.toString()}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 15,
            right: 15,
            child: Icon(
              Icons.favorite,
              color: Colors.red,
              size: 30,
            ),
          ),
        ],
      );
    },
  );
}

Stack banner(Size size) {
  return Stack(
    children: [
      Container(
        height: size.height * 0.3,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Eid Offer 2024",
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 32,
                      // fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/nike.png",
                        height: 60,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        "Nike",
                        style: TextStyle(
                          color: secondaryColor,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Text("Shop here, shop better", style: TextStyle(color: secondaryColor, fontSize: 18),),
                  Spacer(),
                  MaterialButton(
                    onPressed: () {},
                    color: secondaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0)),
                    child: Text(
                      "Shop now",
                      style: TextStyle(
                        color: Colors.white ,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(),
            ),
          ],
        ),
      ),
      Positioned(
        top: 30,
        right: -20,
        child: Image.asset(
          "assets/images/shoe4.png",
          fit: BoxFit.fitWidth,
          height: size.height * 0.25,
        ),
      ),
    ],
  );
}
