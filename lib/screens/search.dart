import 'package:apex_store/common/common.dart';
import 'package:apex_store/services/data_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        // physics: NeverScrollableScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              /// Search Bar
              TextFormField(
                cursorColor: secondaryColor,
                style: TextStyle(color: Colors.white, fontSize: 18),
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      size: 25,
                      color: primaryColor,
                    ),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.filter_list,
                      size: 30,
                      color: primaryColor,
                    ),
                  ),
                  prefixIconColor: secondaryColor,
                  suffixIconColor: secondaryColor,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),

              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  // crossAxisSpacing: 10,
                  // mainAxisSpacing: 10,
                  childAspectRatio: 0.65,
                ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: allShoes.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: primaryColor,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// Image
                          Container(
                          height: size.height * 0.2,
                              child: Image.asset(
                            allShoes[index].img,
                            fit: BoxFit.contain,
                          ),),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /// Shoe Name
                              Text(
                                allShoes[index].shoeName,
                                style:
                                myStyle(22, Colors.greenAccent, FontWeight.bold),
                              ),

                              /// Brand Name
                              Text(
                                allShoes[index].brandName,
                                style:
                                myStyle(18, secondaryColor, FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  /// Price
                                  Text(allShoes[index].price.toString(), style: myStyle(22, Colors.white, FontWeight.bold),),
                                  Icon(Icons.favorite, color: Colors.redAccent,)
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
