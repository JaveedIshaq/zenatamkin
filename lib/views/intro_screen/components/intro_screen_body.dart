import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zena_tamkin/config/colors.dart';
import 'package:zena_tamkin/shared_widgets/rounded_button.dart';
import 'package:zena_tamkin/views/intro_screen/components/intro_content.dart';
import 'package:zena_tamkin/views/views.dart';

/// Intro ScreenBody
class IntroScreenBody extends StatefulWidget {
  /// constructor
  const IntroScreenBody({
    Key? key,
  }) : super(key: key);
  @override
  _IntroScreenBodyState createState() => _IntroScreenBodyState();
}

class _IntroScreenBodyState extends State<IntroScreenBody> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      'text': 'Empower the Women through Learning',
      'image': 'assets/svg/learning.svg'
    },
    {
      'text': 'Usefull Resources for Woman',
      'image': 'assets/svg/useful-resources.svg'
    },
    {
      'text': 'Fun and Helpful Section for Everuday Life',
      'image': 'assets/svg/fun-zone.svg'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            SvgPicture.asset('assets/svg/learning.svg', height: 0),
            SvgPicture.asset('assets/svg/useful-resources.svg', height: 0),
            SvgPicture.asset('assets/svg/fun-zone.svg', height: 0),
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => IntroContent(
                  image: splashData[index]['image'],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    const Spacer(flex: 3),
                    RoundedButton(
                      text: 'Continue',
                      press: () async {
                        final prefs = await SharedPreferences.getInstance();
                        await prefs.setBool('freshInstall', false);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeView()));
                      },
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? primaryColor : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
