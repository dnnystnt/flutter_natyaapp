import 'package:flutter/material.dart';
import 'package:flutter_natyaapp/shared/theme.dart';
import 'package:flutter_natyaapp/widgets/custom_boxbar.dart';

import '../widgets/custom_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Widget header(),
    Widget header() {
      return Container(
        margin: EdgeInsets.only(bottom: 6),
        width: 428,
        height: 291,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          image: DecorationImage(
            image: AssetImage(
              'assets/img-jumbotron.png',
            ),
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 40),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 54,
                              height: 54,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/image_profile.png',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 14),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Good Morning',
                                  style: KWhiteTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: regular,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Dylan Watson',
                                  style: KWhiteTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: semiBold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/notifications.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                // controller: usernameEmailController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: KWhiteColor,
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: KPlaceholderColor,
                  label: Text(
                    'Search...',
                    style: KPlaceholderTextStyle,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    // Widget boxbarHeader()
    Widget boxbarHeader() {
      return Container(
        margin: EdgeInsets.only(top: 230, left: 16, right: 16),
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: 396,
        height: 112,
        decoration: BoxDecoration(
          color: KWhiteBackgroundColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              spreadRadius: -2,
              blurRadius: 8,
              offset: const Offset(2, 4),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomBoxbar(imgURL: 'assets/icon_home.png', title: 'Activity'),
            CustomBoxbar(imgURL: 'assets/icon_fnb.png', title: 'F&B'),
            CustomBoxbar(imgURL: 'assets/icon_room.png', title: 'Room'),
            CustomBoxbar(imgURL: 'assets/icon_spa.png', title: 'Spa'),
          ],
        ),
      );
    }

    // Widget advertisementSection()
    Widget advertisementSection() {
      return Container(
        margin: EdgeInsets.only(top: 370, left: 16, right: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Advertisement',
                  style: KTitleTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'See All',
                  style: KPrimaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 12),
              width: 396,
              height: 174,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    spreadRadius: -2,
                    blurRadius: 8,
                    offset: const Offset(2, 4),
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_advertisement.png',
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 28, left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Exploring Temple',
                          style: KTitleTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Get Special Offer Up to 35%',
                          style: KDescTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: regular,
                          ),
                        ),
                        SizedBox(height: 20),
                        CustomButton(
                          width: 120,
                          height: 48,
                          title: 'Claim',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    // Widget otheractivitySection()
    Widget otheractivitySection() {
      return Container(
        margin: EdgeInsets.only(top: 600, left: 16, right: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Other Interested Activities',
                  style: KTitleTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'See All',
                  style: KPrimaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 12),
              width: 396,
              height: 174,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    spreadRadius: -2,
                    blurRadius: 8,
                    offset: const Offset(2, 4),
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage(
                    'assets/img_meditation_rounded.png',
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kuta Meditation Class',
                          style: KWhiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Live Streaming on 01.00 am',
                          style: KWhiteTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: regular,
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: KWhiteBackgroundColor,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: KWhiteBackgroundColor,
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: KWhiteBackgroundColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: KPrimaryColor,
          unselectedItemColor: KNavbarColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: KPrimaryTextStyle.copyWith(
            fontSize: 8,
            fontWeight: medium,
          ),
          unselectedLabelStyle: KDescTextStyle.copyWith(
            fontSize: 8,
            fontWeight: medium,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_home.png',
                width: 32,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_search.png',
                width: 32,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_wallet.png',
                width: 32,
              ),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_profile.png',
                width: 32,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {},
        backgroundColor: KPrimaryColor,
        child: Image.asset(
          'assets/plus-circle.png',
          width: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              // padding: EdgeInsets.only(left: 16, right: 16, top: 20),
              children: [
                header(),
                boxbarHeader(),
                advertisementSection(),
                otheractivitySection(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
