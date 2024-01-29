import 'package:flutter/material.dart';
import 'package:music_app/configs/constants/color_constants.dart';
import 'package:music_app/configs/extensions/buildcontext_extensions.dart';
import 'package:music_app/core/core_widgets/widget_links.dart';

class GlobalProfileAppbar extends StatelessWidget {
  const GlobalProfileAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 28,
        backgroundColor: Colors.grey[300],
        child: CircleAvatar(
          radius: 26,
          backgroundColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              'assets/icons/woman.png',
            ),
          ),
        ),
      ),
      title: customTextWidget(
          text: 'Ali Jawad',
          color: ColorConstants.primaryColor,
          fontSize: 19,
          fontWeight: FontWeight.w500),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 3.0),
        child: customTextWidget(
            text: 'Lead Flutter developer :3',
            color: Colors.grey.shade500,
            fontSize: 17,
            fontWeight: FontWeight.w500),
      ),
      trailing: GestureDetector(
        onTap: () {
          context.popFromScreen();
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 23.0),
          child: customTextWidget(
              text: 'Back',
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
