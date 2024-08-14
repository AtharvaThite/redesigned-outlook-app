import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:redesigned_outlook_app/components/side_menu_item.dart';
import 'package:redesigned_outlook_app/components/tags.dart';
import 'package:redesigned_outlook_app/constants/constants.dart';
import 'package:redesigned_outlook_app/extensions/extensions.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      color: kBgLightColor,
      child: Column(
        children: [
          Image.asset(
            "assets/images/Logo Outlook.png",
            width: 46,
          ),
          const SizedBox(height: kDefaultPadding),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 1.5,
                vertical: kDefaultPadding,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              backgroundColor: kPrimaryColor,
            ),
            onPressed: () {},
            icon: SvgPicture.asset("assets/Icons/Edit.svg", width: 16),
            label: const Text(
              "New message",
              style: TextStyle(color: Colors.white),
            ),
          ).addNeumorphism(
            topShadowColor: Colors.white,
            bottomShadowColor: const Color(0xFF234395).withOpacity(0.2),
          ),
          const SizedBox(height: kDefaultPadding),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 1.5,
                vertical: kDefaultPadding,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              backgroundColor: kBgDarkColor,
            ),
            onPressed: () {},
            icon: SvgPicture.asset("assets/Icons/Download.svg", width: 16),
            label: const Text(
              "Get messages",
              style: TextStyle(color: kTextColor),
            ),
          ).addNeumorphism(),
          const SizedBox(height: kDefaultPadding * 2),
          // Menu Items
          SideMenuItem(
            press: () {},
            title: "Inbox",
            iconSrc: "assets/Icons/Inbox.svg",
            isActive: true,
            itemCount: 3,
          ),
          SideMenuItem(
            press: () {},
            title: "Sent",
            iconSrc: "assets/Icons/Send.svg",
            isActive: false,
          ),
          SideMenuItem(
            press: () {},
            title: "Drafts",
            iconSrc: "assets/Icons/File.svg",
            isActive: false,
          ),
          SideMenuItem(
            press: () {},
            title: "Deleted",
            iconSrc: "assets/Icons/Trash.svg",
            isActive: false,
            showBorder: false,
          ),

          const SizedBox(height: kDefaultPadding * 2),
          // Tags
          const Tags(),
        ],
      ),
    );
  }
}
