import 'package:flutter/material.dart';
import 'package:npd_traffic_count_app/functioning_screens/home.dart';
import 'package:npd_traffic_count_app/functioning_screens/profile.dart';
import 'package:npd_traffic_count_app/functioning_screens/report.dart';
import 'package:npd_traffic_count_app/functioning_screens/traffic_counting.dart';


class bottomNav extends StatefulWidget {
  const bottomNav({Key? key}) : super(key: key);

  @override
  State<bottomNav> createState() => _bottomNavState();
}

class _bottomNavState extends State<bottomNav> {
  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
     
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/home'),
              child: Icon(
                Icons.home,
                color: Color.fromARGB(255, 255, 183, 77),
              ),
            ),
            label: 'Home',
          ),
         BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/counting'),
              child: Icon(
                Icons.add_circle_outlined,
                color: Color.fromARGB(255, 255, 183, 77),
              ),
            ),
            label: 'Count',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/profile'),
              child: Icon(
                Icons.account_circle_rounded,
                color: Color.fromARGB(255, 255, 183, 77),
              ),
            ),
            label: 'Profile',
          ),
        ],
      );
  }
}