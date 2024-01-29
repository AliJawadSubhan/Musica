import 'package:flutter/material.dart';
import 'package:flutter_svg_image/flutter_svg_image.dart';
import 'package:music_app/configs/constants/assets_configs/assets_constants.dart';
import 'package:music_app/configs/constants/color_constants.dart';
import 'package:music_app/modules/home/home_page.dart';
import 'package:music_app/modules/onboarding/onboarding_page.dart';

class MusicaApp extends StatelessWidget {
  const MusicaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: ColorConstants.primaryColor,
        ),
        home: const OnBoardingPage());
  }
}
