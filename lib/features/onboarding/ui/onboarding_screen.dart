import 'package:afandem_app/core/helper/extension.dart';
import 'package:afandem_app/core/helper/spacing.dart';
import 'package:afandem_app/core/local_storage/local_storage.dart';
import 'package:afandem_app/core/routing/routes.dart';
import 'package:afandem_app/core/theming/colorManger.dart';
import 'package:afandem_app/core/theming/styles.dart';
import 'package:afandem_app/core/widgets/app_button.dart';
import 'package:afandem_app/features/onboarding/ui/widgets/onboarding_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _pageController = PageController();
  bool isLast = false;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void onSubmit() {
    CacheHelper.saveData(key: 'onBoarding', value: true).then((value) {
      if (value) {
        context.pushNamed(Routes.loginScreen);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              isLast = index == OnboardingData.onboardingList.length - 1;
            });
          },
          itemCount: OnboardingData.onboardingList.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 74.h),
                  child:
                      Image.asset(OnboardingData.onboardingList[index].image),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                  child: Text(
                    OnboardingData.onboardingList[index].title,
                    style: Styles.font18W700,
                  ),
                ),
                verticalSpace(12),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0.w),
                  child: Text(
                    OnboardingData.onboardingList[index].subTitle,
                    textAlign: TextAlign.center,
                    style: Styles.font14W500,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmoothPageIndicator(
                        controller: _pageController,
                        count: OnboardingData.onboardingList.length,
                        effect: ExpandingDotsEffect(
                          dotColor: ColorManger.mainColor.withOpacity(0.3),
                          activeDotColor: ColorManger.mainColor,
                        ),
                      ),
                      AppButton(
                        text: isLast ? "إبداً" : "التالي",
                        onPressed: () {
                          if (isLast) {
                            onSubmit();
                          } else {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          }
                        },
                        buttonColor: isLast
                            ? const WidgetStatePropertyAll(
                                ColorManger.mainColor)
                            : const WidgetStatePropertyAll(Colors.white),
                        width: 104,
                        textStyle:
                            isLast ? Styles.font15WhiteW600 : Styles.font15W600,
                      ),
                    ],
                  ),
                ),
                verticalSpace(40),
              ],
            );
          },
        ),
      ),
    );
  }
}
