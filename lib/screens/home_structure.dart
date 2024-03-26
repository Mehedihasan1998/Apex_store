import 'package:apex_store/common/common.dart';
import 'package:apex_store/screens/favourites.dart';
import 'package:apex_store/screens/home_screen.dart';
import 'package:apex_store/screens/profile.dart';
import 'package:apex_store/screens/search.dart';
import 'package:flutter/material.dart';

class HomeStructure extends StatefulWidget {
  const HomeStructure({super.key});

  @override
  State<HomeStructure> createState() => _HomeStructureState();
}

class _HomeStructureState extends State<HomeStructure> {

  final tabs = [
    HomeScreen(),
    SearchPage(),
    FavouritePage(),
    ProfilePage(),
  ];

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
        body: tabs[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          backgroundColor: primaryColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: scaffoldBackgroundColor,
          unselectedItemColor: secondaryColor,
          iconSize: 22,
          elevation: 5,
          selectedIconTheme: IconThemeData(
            size: 24,
          ),
          unselectedIconTheme: IconThemeData(
            size: 22,
          ),
          items: [
            customBottomNavigationBarItem("Home", Icon(Icons.home)),
            customBottomNavigationBarItem("Search", Icon(Icons.search)),
            customBottomNavigationBarItem("Favourite", Icon(Icons.favorite)),
            customBottomNavigationBarItem("Profile", Icon(Icons.person)),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }

  BottomNavigationBarItem customBottomNavigationBarItem(
      String label, Icon icon) {
    return BottomNavigationBarItem(
      label: label,
      activeIcon: Container(
          height: 35,
          width: 55,
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: icon,),
      icon: icon,
    );
  }
}
