import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_natyaapp/shared/theme.dart';
// import 'package:flutter_natyaapp/shared/theme.dart';

class OnboardingonePage extends StatefulWidget {
  const OnboardingonePage({super.key});

  @override
  State<OnboardingonePage> createState() => _OnboardingonePageState();
}

class _OnboardingonePageState extends State<OnboardingonePage> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

  List<String> titles = [
    'Make your Experience dreams come true everyday in Bali',
    'Explore Local Balinese Culture for Sustainability',
    'Eplore Our Local People and their Friendliness',
  ];

  List<String> subtitles = [
    'Lorem ipsum dolor sit amet consectetur. Amet consectetur velit sodales tellus. Id nisl euismod tincidunt accumsan ornare. Urna id morbi commodo cum pretium amet sodales non bibendum. Etiam blandit arcu mi ultricies.',
    'Lorem ipsum dolor sit amet consectetur. Amet consectetur velit sodales tellus. Id nisl euismod tincidunt accumsan ornare. Urna id morbi commodo cum pretium amet sodales non bibendum. Etiam blandit arcu mi ultricies.',
    'Lorem ipsum dolor sit amet consectetur. Amet consectetur velit sodales tellus. Id nisl euismod tincidunt accumsan ornare. Urna id morbi commodo cum pretium amet sodales non bibendum. Etiam blandit arcu mi ultricies.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CarouselSlider(
                  items: [
                    Image.asset(
                      'assets/onboarding-image01.png',
                      height: 926,
                    ),
                    Image.asset(
                      'assets/onboarding-image02.png',
                      height: 926,
                    ),
                    Image.asset(
                      'assets/onboarding-image03.png',
                      height: 926,
                    ),
                  ],
                  options: CarouselOptions(
                    height: 865,
                    viewportFraction: 1,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                  carouselController: carouselController,
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding:
                    EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 20),
                decoration: BoxDecoration(
                  color: KWhiteColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Text(
                      titles[currentIndex],
                      style: KTitleTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      subtitles[currentIndex],
                      style: KDescTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: regular,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(height: 40),
                    currentIndex == 2
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Skip',
                                style: KPrimaryTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: bold,
                                  letterSpacing: 1.2,
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 5,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/onboardingbarthree.png'),
                                  ),
                                ),
                              ),
                              Container(
                                width: 133,
                                height: 48,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/login-page');
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: KPrimaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                  child: Text(
                                    'Next',
                                    style: KWhiteTextStyle,
                                  ),
                                ),
                              ),
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Skip',
                                style: KPrimaryTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: bold,
                                  letterSpacing: 1.2,
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 5,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: currentIndex == 0
                                        ? AssetImage(
                                            'assets/onboardingbarone.png')
                                        : AssetImage(
                                            'assets/onboardingbartwo.png'),
                                  ),
                                ),
                              ),
                              Container(
                                width: 133,
                                height: 48,
                                child: TextButton(
                                  onPressed: () {
                                    carouselController.nextPage();
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: KPrimaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                  child: Text(
                                    'Next',
                                    style: KWhiteTextStyle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                  ],
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ],
      ),
    );
  }
}
