import 'package:flutter/material.dart';
import 'package:flutter_svg_image/flutter_svg_image.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:music_app/configs/constants/assets_configs/assets_constants.dart';
import 'package:music_app/configs/constants/color_constants.dart';
import 'package:music_app/configs/extensions/buildcontext_extensions.dart';
import 'package:music_app/core/core_widgets/widget_links.dart';
import 'package:music_app/modules/home/home_page.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          // shrinkWrap: true,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spaces.smallh,
                Center(
                  child: Image(
                    image: SvgImage.asset(
                      ImagesString.logo_image,
                    ),
                  ),
                ),
                Spaces.smallh,
                Center(
                  child: customTextWidget(
                      color: const Color(0xFF868686),
                      text: "Just keep on vibin’",
                      fontSize: 20),
                )
              ],
            ),
            SizedBox(
              height: context.screenHeight * 0.45,
              child: Image(
                image: AssetImage(
                  ImagesString.girl_with_headphone,
                ),
              ),
            ),
            Column(
              children: [
                customElevatedBtnWidget(
                  child: customTextWidget(text: "Sign up", fontSize: 21),
                  func: () {
                    context.pushScreenTo(const HomePage());
                  },
                  height: context.screenHeight * 0.08,
                  bgColor: const Color(0xFFc2c2c2),
                  circlularBorderRadius: 31.0,
                  width: context.screenWidth * 0.9,
                ),
                Spaces.mid,
                customElevatedBtnWidget(
                  child: Row(
                    // mainAxisSize: M,
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(
                        EvaIcons.smartphone_outline,
                        color: Color(0xFFc2c2c2),
                      ),
                      Spaces.smallw,
                      Flexible(
                        child: customTextWidget(
                          fontNameP: "Inter",
                          text: "Continue with Phone Number",
                          fontSize: 21,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  borderColor: const Color(0xFFc2c2c2),
                  func: () {},
                  height: context.screenHeight * 0.08,
                  // bgColor: const Color(0xFFc2c2c2),
                  bgColor: ColorConstants.primaryColor,
                  circlularBorderRadius: 31.0,
                  width: context.screenWidth * 0.9,
                ),
                Spaces.mid,
                customElevatedBtnWidget(
                  child: Row(
                    // mainAxisSize: M,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Brand(Brands.google),
                      Spaces.midw,
                      customTextWidget(
                        fontNameP: "Inter",
                        text: "Continue with Google",
                        fontSize: 21,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  borderColor: const Color(0xFFc2c2c2),
                  func: () {},
                  height: context.screenHeight * 0.08,
                  // bgColor: const Color(0xFFc2c2c2),
                  bgColor: ColorConstants.primaryColor,
                  circlularBorderRadius: 31.0,
                  width: context.screenWidth * 0.9,
                ),
                Spaces.extrasmall,
                customElevatedBtnWidget(
                  child: customTextWidget(
                      text: "Login",
                      fontSize: 21,
                      color: const Color(0xFFc2c2c2)),
                  func: () {},
                  height: context.screenHeight * 0.08,
                  // bgColor: const Color(0xFFc2c2c2),
                  circlularBorderRadius: 31.0,
                  width: context.screenWidth * 0.9,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
