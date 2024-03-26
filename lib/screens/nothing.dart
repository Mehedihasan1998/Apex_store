import 'package:apex_store/screens/favourites.dart';
import 'package:apex_store/screens/home_screen.dart';
import 'package:apex_store/screens/profile.dart';
import 'package:apex_store/screens/search.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

class NothingPage extends StatefulWidget {
  const NothingPage({super.key});

  @override
  State<NothingPage> createState() => _NothingPageState();
}

class _NothingPageState extends State<NothingPage> {
  int _selectedTab = 0;
  final tabs = [
    HomeScreen(),
    SearchPage(),
    FavouritePage(),
    ProfilePage(),
  ];




  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = i;
    });
  }
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: Container(child: Image.asset("assets/images/nike.png",),),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: DotNavigationBar(
            margin: EdgeInsets.only(left: 10, right: 10),
            currentIndex: _selectedTab,
            dotIndicatorColor: Colors.white,
            unselectedItemColor: Colors.grey[300],
            onTap: _handleIndexChanged,
            splashBorderRadius: 50,
            items: [
              DotNavigationBarItem(
                icon: Icon(Icons.home),
                selectedColor: Color(0xff73544C),
              ),

              DotNavigationBarItem(
                icon: Icon(Icons.favorite),
                selectedColor: Color(0xff73544C),
              ),

              DotNavigationBarItem(
                icon: Icon(Icons.search),
                selectedColor: Color(0xff73544C),
              ),

              DotNavigationBarItem(
                icon: Icon(Icons.person),
                selectedColor: Color(0xff73544C),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
