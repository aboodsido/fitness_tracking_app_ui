import 'package:fitness_tracking_app/Screens/home_screen.dart';

import '../Widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarderingScreen extends StatefulWidget {
  const OnBoarderingScreen({super.key});

  @override
  State<OnBoarderingScreen> createState() => _OnBoarderingScreenState();
}

class _OnBoarderingScreenState extends State<OnBoarderingScreen> {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              physics: const BouncingScrollPhysics(),
              controller: controller,
              children: [
                buildPage(),
                buildPage(),
                buildPage(),
                buildPage(),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          SmoothPageIndicator(
            controller: controller,
            count: 4,
            effect: const ExpandingDotsEffect(
              dotColor: Colors.grey,
              activeDotColor: Color(0xFFDF6B00),
              dotHeight: 10.0,
              dotWidth: 10.0,
              expansionFactor: 2,
            ),
          ),
          const SizedBox(height: 47.0),
          CustomButton(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              buttonText: 'Get Started'),
          const SizedBox(height: 70.0),
        ],
      ),
    );
  }

  Widget buildPage() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          height: 400,
          child: Image.asset(
            'assets/images/pageview.png',
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 37),
        const Text(
          'Track your Active Lifestyle',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 16.0),
        const Text('Find your way to the perfect body',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center),
      ],
    );
  }
}
