import 'package:apex_store/common/common.dart';
import 'package:apex_store/screens/favourites.dart';
import 'package:apex_store/screens/show_all.dart';
import 'package:apex_store/services/data_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? _value = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),

              /// Banner
              banner(size),
              const SizedBox(
                height: 20,
              ),

              /// Shoe type ChoiceChip
              Container(
                height: 60,
                margin: const EdgeInsets.only(right: 8),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: List.generate(
                    categoryList.length,
                    (int index) {
                      return Container(
                        margin: const EdgeInsets.all(5),
                        child: ChoiceChip(
                          side: BorderSide.none,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          selectedColor: Color(0xffe0fbfc),
                          backgroundColor: Colors.greenAccent,
                          label: Image.asset(
                            categoryList[index].icon,
                            width: 40,
                            height: 25,
                            fit: BoxFit.contain,
                          ),
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

              const SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New Arrivals",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (builder)=> ShowAllShoes()));
                    },
                    child: Text(
                      "Show all",
                      style: TextStyle(
                        color: Colors.tealAccent,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),

              /// Custom ListView (horizontal)
              customListview(size),
            ],
          ),
        ),
      ),
    );
  }
}
