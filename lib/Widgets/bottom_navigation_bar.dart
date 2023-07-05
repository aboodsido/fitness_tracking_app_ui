import 'package:flutter/material.dart';

import '../Screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({
    Key? key,
    required this.index,
  }) : super(key: key);

  int index;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: BottomNavigationBar(
        elevation: 0,
        currentIndex: widget.index,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 10,
        unselectedItemColor: Colors.black.withAlpha(100),
        items: [
          BottomNavigationBarItem(
            icon: Container(
              width: 50,
              height: 50,
              decoration: widget.index == 0
                  ? const ShapeDecoration(
                      color: Colors.black,
                      shape: OvalBorder(),
                    )
                  : null,
              child: IconButton(
                icon: Icon(
                  Icons.home_outlined,
                  color: widget.index == 0 ? Colors.white : Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    widget.index = 0;
                  });
                },
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 50,
              height: 50,
              decoration: widget.index == 1
                  ? const ShapeDecoration(
                      color: Colors.black,
                      shape: OvalBorder(),
                    )
                  : null,
              child: IconButton(
                icon: Icon(
                  Icons.analytics_outlined,
                  color: widget.index == 1 ? Colors.white : Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    widget.index = 1;
                  });
                },
              ),
            ),
            label: 'activity',
          ),
          BottomNavigationBarItem(
              icon: Container(
                width: 50,
                height: 50,
                decoration: widget.index == 2
                    ? const ShapeDecoration(
                        color: Colors.black,
                        shape: OvalBorder(),
                      )
                    : null,
                child: IconButton(
                  icon: Icon(
                    Icons.calendar_today_outlined,
                    color: widget.index == 2 ? Colors.white : Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      widget.index = 2;
                    });
                  },
                ),
              ),
              label: 'Calendar'),
          BottomNavigationBarItem(
              icon: Container(
                width: 50,
                height: 50,
                decoration: widget.index == 3
                    ? const ShapeDecoration(
                        color: Colors.black,
                        shape: OvalBorder(),
                      )
                    : null,
                child: IconButton(
                  icon: Icon(
                    Icons.tune_rounded,
                    color: widget.index == 3 ? Colors.white : Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      widget.index = 3;
                    });
                  },
                ),
              ),
              label: 'analytics'),
        ],
      ),
    );
  }
}
