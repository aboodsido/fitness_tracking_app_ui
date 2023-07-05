import 'package:flutter/material.dart';

class VerticalBarWidget extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  VerticalBarWidget(
      {required this.activeHight, required this.title, required this.activeColor});

  final double activeHight;
  final Color activeColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              height: 150,
              width: 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey.shade400,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: activeHight,
                width: 4,
                decoration:  BoxDecoration(
                  borderRadius:const BorderRadius.all(Radius.circular(30)),
                  color: activeColor,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(
            color: Colors.black.withOpacity(0.5),
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
