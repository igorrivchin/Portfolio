import 'package:flutter/material.dart';
import 'package:portfolio/screens/about_me.dart';
import 'package:portfolio/screens/projects.dart';
import 'package:portfolio/screens/certificates.dart';

import 'screens/contact.dart';

void main() => runApp(Portfolio());

class Portfolio extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PortfolioState();
  }
}

class PortfolioState extends State<Portfolio> {
  int selectedIndex = 0;
  final _pageOptions = [
    Contact(),
    AboutMe(),
    Projects(),
    Certificates(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: ThemeData.dark(),
      home: Scaffold(
        body: _pageOptions[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(
                'Home',
                style: TextStyle(
                  fontFamily: 'Raleway',
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.face),
              title: Text(
                'About Me',
                style: TextStyle(
                  fontFamily: 'Raleway',
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.code),
              title: Text(
                'Projects',
                style: TextStyle(
                  fontFamily: 'Raleway',
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.check_circle_outline),
              title: Text(
                'Certificates',
                style: TextStyle(
                  fontFamily: 'Raleway',
                ),
              ),
            ),
          ],
          currentIndex: selectedIndex,
          fixedColor: Colors.white,
          backgroundColor: Colors.black54,
          //   selectedItemColor: Color(0xFFb2ebf9),
          //  unselectedItemColor: Colors.grey[575],
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
