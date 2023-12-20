import 'package:flutter/material.dart';
import 'package:sir_jitendra_project/Views/nav_screens/home_screen.dart';
import 'package:sir_jitendra_project/Views/nav_screens/profile_screen.dart';
import 'package:sir_jitendra_project/Views/nav_screens/questions_screen.dart';
import 'package:sir_jitendra_project/Views/nav_screens/report_screen.dart';

import '../../Utils/colors.dart';
import '../../Utils/styles.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;

  List<Widget> _pages = [
    HomeScreen(),
    QuestionScreen(),
    ReportScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Color.fromRGBO(26, 11, 29, 1),
        centerTitle: true,
        leading: Center(
            child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'Home',
            style: bigfonts,
          ),
        )),
        title: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: cardColor,
            width: 150,
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 10,
                ),
                Text(
                  'Riya Singh',
                  style: bigfonts,
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
              top: 10,
              bottom: 10,
            ),
            child: Stack(
              children: [
                Container(
                  width: 57,
                  height: 62,
                ),
                Positioned(
                  right: 5,
                  top: -2,
                  child: Icon(
                    Icons.circle,
                    size: 14,
                    color: Colors.redAccent,
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 1,
                  child: Stack(
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                        ),
                      ),
                      Positioned(
                        left: -1.3,
                        bottom: -2,
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () {},
                          icon: Icon(
                            Icons.notification_important_outlined,
                            // color: Colors.white10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(26, 11, 29, 1),
        type: BottomNavigationBarType.fixed,
        currentIndex: _pageIndex,
        onTap: (value) {
          setState(() {
            _pageIndex = value;
          });
        },
        unselectedItemColor: TextColor,
        selectedItemColor: navColor,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: mobileBackgroundColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.question_answer_outlined), label: 'Questions'),
          BottomNavigationBarItem(
              icon: Icon(Icons.report_outlined), label: 'Reports'),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 13,
              ),
              label: 'You'),
        ],
      ),
      body: _pages[_pageIndex],
    );
  }
}
