import 'package:apex_store/common/common.dart';
import 'package:apex_store/services/data_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailsPage extends StatefulWidget {
  int index;

  DetailsPage({super.key, required this.index});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int? _value = 0;
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: secondaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  allShoes[widget.index].img,
                  height: size.height * 0.42,
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
                Positioned(
                  top: 10,
                  left: 0,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: primaryColor,
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 0,
                  child: Image.asset(
                    'assets/images/nike.png',
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: size.width * 0.5,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        height: 10, width: 10, decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.greenAccent),),
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        height: 10, width: 10, decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),),
                      Container(
                        height: 10, width: 10, decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),),
                    ],
                  ),
                )
              ],
            ),
            // SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(top: 20, ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),),
                color: primaryColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(allShoes[widget.index].shoeName, style: myStyle(30, Colors.white, FontWeight.bold),),
                  Text(allShoes[widget.index].brandName, style: myStyle(18, secondaryColor, FontWeight.bold),),
                  Text(allShoes[widget.index].price.toString(), style: myStyle(25, Colors.greenAccent, FontWeight.bold),),
                  Text(allShoes[widget.index].description, style: myStyle(18, Colors.white, FontWeight.bold),),
                  const SizedBox(height: 20,),

                  Row(
                    children: [
                      const Text("Size: ", style: TextStyle(color: Colors.white, fontSize: 18),),
                      Container(
                        height: 50,
                        margin: const EdgeInsets.only(right: 8),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: List.generate(
                            shoeSizes.length,
                                (int index) {
                              return Container(
                                margin: const EdgeInsets.all(5),
                                child: ChoiceChip(
                                  side: BorderSide.none,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  selectedColor: Color(0xffe0fbfc),
                                  backgroundColor: Colors.greenAccent,
                                  label: Text("${shoeSizes[index].toString()}"),
                                  selected: _value == index,
                                  onSelected: (bool selected) {
                                    setState(() {
                                      _value = selected ? index : null;
                                    });
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.center,
                    child: MaterialButton(
                      onPressed: (){},
                      height: size.height * 0.05,minWidth: size.width * 0.8,
                      color: Colors.white,
                      child: Text("Buy now", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
