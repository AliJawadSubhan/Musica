import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:music_app/configs/extensions/buildcontext_extensions.dart';
import 'package:music_app/core/core_widgets/core_text.dart';
import 'package:music_app/core/core_widgets/spaces.dart';

import '../../configs/constants/assets_configs/assets_constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      extendBody: true,
      bottomNavigationBar: Container(
        height: context.screenHeight * 0.063,
        width: context.screenWidth,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Colors.black, // Black color at the bottom
              Colors.transparent, // Transparent color at the top
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              child: Column(
                children: [
                  const Icon(
                    EvaIcons.home,
                    size: 31,
                    color: Colors.white,
                  ),
                  Spaces.extrasmall,
                  customTextWidget(text: "Home", color: Colors.white)
                ],
              ),
            ),
            Flexible(
              child: Column(
                children: [
                  const Icon(
                    EvaIcons.search,
                    size: 31,
                    color: Colors.white,
                  ),
                  Spaces.extrasmall,
                  customTextWidget(text: "Search", color: Colors.white)
                ],
              ),
            ),
            Flexible(
              child: Column(
                children: [
                  const Icon(
                    EvaIcons.music_outline,
                    size: 31,
                    color: Colors.white,
                  ),
                  Spaces.extrasmall,
                  customTextWidget(text: "Music", color: Colors.white)
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spaces.large,
                Spaces.large,
                Spaces.large,
                customTextWidget(
                  text: "👋 Hi Logan,",
                  color: const Color(0xFFc2c2c2),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontNameP: "Inter",
                ),
                Spaces.extrasmall,
                customTextWidget(
                  text: "Good Evening",
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontNameP: "Inter",
                ),
              ],
            ),
            Column(
              children: [
                Spaces.large,
                Spaces.large,
                Spaces.large,
                Spaces.smallh,
                Row(
                  children: [
                    const Icon(
                      FontAwesome.bell_solid,
                      color: Color(0xFFc2c2c2),
                    ),
                    Spaces.midw,
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        ImagesString.girl_with_headphone,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          child: Column(
            children: [
              Spaces.mid,
              SizedBox(
                height: context.screenHeight * 0.05,
                child: ListView(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (int i = 0; i < catlist.length; i++)
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: i == 0
                                ? const Color(0xFF2a2a2a)
                                : Colors.transparent,
                          ),
                          child: Center(
                            child: customTextWidget(
                              text: catlist[i],
                              fontNameP: "Inter",
                              fontSize: 18,
                              color: const Color(0xFF868686),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              Spaces.mid,
              Align(
                alignment: Alignment.centerLeft,
                child: customTextWidget(
                  text: "Featuring Today",
                  color: const Color(0xFF868686),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spaces.smallh,
              Align(
                child: SizedBox(
                  height: context.screenHeight * 0.15,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Image(
                            image: AssetImage(ImagesString.featured_banner),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Image(
                            image: AssetImage(ImagesString.featured_banner),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Image(
                            image: AssetImage(ImagesString.featured_banner),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spaces.mid,
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customTextWidget(
                      text: "Recently Played",
                      color: const Color(0xFF868686),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    customTextWidget(
                      text: "See More",
                      // color: const Color(0xFF868686),
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              Spaces.smallh,
              Align(
                child: SizedBox(
                  height: context.screenHeight * 0.15,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      for (int i = 0; i < 12; i++)
                        Column(
                          children: [
                            const Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Stack(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          "assets/images/recently_played.png"),
                                    ),
                                    Positioned(
                                      bottom: 3,
                                      child: Icon(
                                        EvaIcons.play_circle,
                                        // color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Spaces.extrasmall,
                            customTextWidget(
                                text: "Inside Out", color: Colors.white),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
              Spaces.mid,
              Align(
                alignment: Alignment.centerLeft,
                child: customTextWidget(
                  text: "Mixes For you",
                  color: const Color(0xFF868686),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spaces.smallh,
              SizedBox(
                height: context.screenHeight * 0.2,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    for (int i = 0; i < 6; i++)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Image(
                              image: AssetImage("assets/images/mixes.png"),
                            ),
                            SizedBox(
                              height: 30,
                              width: 100,
                              child: customTextWidget(
                                text:
                                    "Maroon 5, Imagine Dragons, \n Coldplay...",
                                textAlign: TextAlign.center,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const catlist = [
  "For you",
  "Relax",
  "Workout",
  "Travel",
];
