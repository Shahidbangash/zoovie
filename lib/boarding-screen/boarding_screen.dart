import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:zoovie/app/event-info/view/event_info.dart';
import 'package:zoovie/component/app_component.dart';
import 'package:zoovie/const/app_color.dart';
import 'package:zoovie/const/resource.dart';
import 'package:zoovie/sign-in-screen/signin_screen.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // PageView for images
          Expanded(
            flex: 3,
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                Image.asset(
                  R.ASSETS_ON_BOARDING_SCREEN_IMG_PNG,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  R.ASSETS_ON_BOARDING_SCREEN_IMG_PNG,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  R.ASSETS_ON_BOARDING_SCREEN_IMG_PNG,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),

          // Indicator

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16).r,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) {
                    return _buildIndicator(isActive: index == _currentPage);
                  }),
                ),
                Text(
                  'Update your upcoming event here',
                  style: GoogleFonts.inter(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Experience Life To The Fullest Join\nEvent Spp Has You Covered!',
                  style: GoogleFonts.inter(
                    fontSize: 13.sp,
                    color: AppColors.greyTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 24,
                ),
                AppComponent().button(
                  context,
                  onTap: () {
                    LoginScreen().launch(context);
                  },
                  borderRadius: 12,
                  title: 'Get Started',
                  color: AppColors.primaryColor,
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }

  // Method to build the indicator dots
  Widget _buildIndicator({required bool isActive}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      width: isActive ? 10.0 : 8.0,
      height: isActive ? 10.0 : 8.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.red : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
