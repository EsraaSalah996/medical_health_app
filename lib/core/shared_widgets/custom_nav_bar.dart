import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: const Color(0xff2260FF),
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: Opacity(
                    opacity: 0.5,
                    child: Image.asset(
                      'assets/images/home icon.png',
                      width: 24,
                      height: 24,
                      fit: BoxFit.contain,
                      color: const Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
              activeIcon: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/home icon.png',
                    width: 24,
                    height: 24,
                    fit: BoxFit.contain,
                    color: const Color(0xff00278C),
                  ),
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: Opacity(
                    opacity: 0.5,
                    child: Image.asset(
                      'assets/images/chat icon.png',
                      width: 24,
                      height: 24,
                      fit: BoxFit.contain,
                      color: const Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
              activeIcon: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/chat icon.png',
                    width: 24,
                    height: 24,
                    fit: BoxFit.contain,
                    color: const Color(0xff00278C),
                  ),
                ),
              ),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: Opacity(
                    opacity: 0.5,
                    child: Image.asset(
                      'assets/images/profile icon.png',
                      width: 24,
                      height: 24,
                      fit: BoxFit.contain,
                      color: const Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
              activeIcon: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/profile icon.png',
                    width: 24,
                    height: 24,
                    fit: BoxFit.contain,
                    color: const Color(0xff00278C),
                  ),
                ),
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: Opacity(
                    opacity: 0.5,
                    child: Image.asset(
                      'assets/images/calendar icon.png',
                      width: 24,
                      height: 24,
                      fit: BoxFit.contain,
                      color: const Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
              activeIcon: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/calendar icon.png',
                    width: 24,
                    height: 24,
                    fit: BoxFit.contain,
                    color: const Color(0xff00278C),
                  ),
                ),
              ),
              label: 'Calendar',
            ),
          ],
        ),
      ),
    );
  }
}
