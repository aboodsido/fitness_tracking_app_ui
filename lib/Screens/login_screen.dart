import 'package:fitness_tracking_app/Screens/register_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Widgets/custom_button.dart';
import '../constants.dart';
import '../utils/animated_navigation.dart';
import 'onboardering_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TapGestureRecognizer? _tapRecognizer;

  @override
  void initState() {
    super.initState();
    _tapRecognizer = TapGestureRecognizer()..onTap = _navigateToTermAndPrivacy;
  }

  void _navigateToTermAndPrivacy() {
    //*_navigate To Term And Privacy
    print('iam here');
  }

  @override
  void dispose() {
    _tapRecognizer!.dispose();
    super.dispose();
  }

  bool _passwordVisible = true;
  bool _rememberCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  Text(
                    'Login',
                    style: customeTextStyle(
                      color: Colors.black,
                      fontFamily: 'Sakkal Majalla',
                      fontSize: 40,
                    ),
                  ),
                  const SizedBox(height: 10),
                  termPrivacySection(),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Login',
                            style: customeTextStyle(
                                color: kBlueSky,
                                fontSize: 25,
                                fontFamily: 'Sakkal Majalla'),
                          ),
                          Container(
                            width: 43,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: kBlueSky,
                                  width: 0.50,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 30),
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                AnimatedNavigation.createRoute(
                                  routedScreen: RegisterScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'Register',
                              style: customeTextStyle(
                                  color: const Color(0xFFA5A5A5),
                                  fontSize: 25,
                                  fontFamily: 'Sakkal Majalla'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 45),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.email_outlined),
                              labelText: 'Email Address',
                              contentPadding: const EdgeInsets.only(bottom: 0),
                              labelStyle: customeTextStyle(
                                  color: const Color(0xFFA5A5A5),
                                  fontSize: 25,
                                  fontFamily: 'Sakkal Majalla')),
                        ),
                        const SizedBox(height: 30),
                        TextFormField(
                          obscureText: _passwordVisible,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: _passwordVisible
                                    ? const Icon(Icons.visibility_outlined)
                                    : const Icon(Icons.visibility_off_outlined),
                                onPressed: () {
                                  setState(
                                    () {
                                      _passwordVisible = !_passwordVisible;
                                    },
                                  );
                                },
                              ),
                              prefixIcon: const Icon(Icons.lock_outline),
                              contentPadding: const EdgeInsets.only(bottom: 0),
                              labelText: 'Password',
                              labelStyle: customeTextStyle(
                                  color: const Color(0xFFA5A5A5),
                                  fontSize: 25,
                                  fontFamily: 'Sakkal Majalla')),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _rememberCheck = !_rememberCheck;
                                    });
                                  },
                                  child: Container(
                                    width: 21,
                                    height: 21,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                          width: 1,
                                          strokeAlign:
                                              BorderSide.strokeAlignOutside,
                                          color: Color(0xFFD4C4C4),
                                        ),
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                    ),
                                    child: Visibility(
                                      visible: _rememberCheck,
                                      child: const Icon(
                                        Icons.check,
                                        size: 20,
                                        color: Color(0xFFD4C4C4),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  'Remember Password',
                                  style: customeTextStyle(
                                      color: kGrey,
                                      fontSize: 21,
                                      fontFamily: 'Sakkal Majalla'),
                                ),
                              ],
                            ),
                            TextButton(
                              onPressed: () {},
                              child: GestureDetector(
                                onTap: () {},
                                child: Text('Forget Password',
                                    style: customeTextStyle(
                                        color: const Color(0xFFC4C4C4),
                                        fontSize: 21,
                                        fontFamily: 'Sakkal Majalla')),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 25),
                      ],
                    ),
                  ),
                  CustomButton(
                    buttonText: 'LOGIN',
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OnBoarderingScreen()));
                    },
                  ),
                  const SizedBox(height: 10),
                  Text('or connect with',
                      style: customeTextStyle(
                          color: const Color(0xFF736F6F),
                          fontSize: 25,
                          fontFamily: 'Sakkal Majalla')),
                  Container(
                    width: 230,
                    // height: 60,
                    padding: const EdgeInsets.all(11),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        socialMediaIcons(
                            onTap: () {},
                            iconPath: 'assets/images/facebook.svg'),
                        const SizedBox(width: 15),
                        socialMediaIcons(
                            onTap: () {},
                            iconPath: 'assets/images/instagram.svg'),
                        const SizedBox(width: 15),
                        socialMediaIcons(
                            onTap: () {},
                            iconPath: 'assets/images/pinterest.svg'),
                        const SizedBox(width: 15),
                        socialMediaIcons(
                            onTap: () {},
                            iconPath: 'assets/images/linkedin.svg'),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.219),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(228.50),
                  ),
                  image: const DecorationImage(
                    image: AssetImage(
                      ('assets/images/image1.png'),
                    ),
                  ),
                ),
                width: 200,
                height: 200,
              ),
            ),
            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: SizedBox(
                  // height: 249.5,
                  child: Image.asset(
                    'assets/images/subtract.png',
                    fit: BoxFit.fill,
                  ),
                )),
            Positioned(
              bottom: 0,
              left: MediaQuery.of(context).size.width * 0.34,
              child: Column(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: ShapeDecoration(
                      color: kBlueSky,
                      shape: RoundedRectangleBorder(
                        side:
                            const BorderSide(width: 0.50, color: Colors.white),
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      width: 55,
                      height: 55,
                      child: SvgPicture.asset(
                        'assets/images/fingerprint.svg',
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Login with touch',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Sakkal Majalla',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox termPrivacySection() {
    return SizedBox(
      width: 233,
      height: 72,
      child: Text.rich(
        TextSpan(
          children: [
            const TextSpan(
              text: 'By signing in you are agreeing our ',
              style: TextStyle(
                color: Color(0xFF6B5E5E),
                fontSize: 25,
                fontFamily: 'Sakkal Majalla',
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              recognizer: _tapRecognizer,
              text: 'Term and privacy polic',
              style: const TextStyle(
                color: Color(0xFF0386D0),
                fontSize: 25,
                fontFamily: 'Sakkal Majalla',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  GestureDetector socialMediaIcons(
      {required VoidCallback onTap, required String iconPath}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: 30,
          height: 30,
          decoration: const BoxDecoration(),
          clipBehavior: Clip.antiAlias,
          child: SvgPicture.asset(iconPath)),
    );
  }

  TextStyle customeTextStyle({
    required Color color,
    required double fontSize,
    required String fontFamily,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
    );
  }
}
