import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:redesigned_outlook_app/constants/constants.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          IconButton(
            icon: SvgPicture.asset(
              "assets/Icons/Trash.svg",
              width: 24,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: kDefaultPadding / 2),
          IconButton(
            icon: SvgPicture.asset(
              "assets/Icons/Reply.svg",
              width: 24,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: kDefaultPadding / 2),
          IconButton(
            icon: SvgPicture.asset(
              "assets/Icons/Reply all.svg",
              width: 24,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: kDefaultPadding / 2),
          IconButton(
            icon: SvgPicture.asset(
              "assets/Icons/Transfer.svg",
              width: 24,
            ),
            onPressed: () {},
          ),
          const Spacer(),
          IconButton(
            icon: SvgPicture.asset(
              "assets/Icons/Printer.svg",
              width: 24,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: kDefaultPadding / 2),
          IconButton(
            icon: SvgPicture.asset(
              "assets/Icons/Markup.svg",
              width: 24,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: kDefaultPadding / 2),
          IconButton(
            icon: SvgPicture.asset(
              "assets/Icons/More vertical.svg",
              width: 24,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: kDefaultPadding / 2),
        ],
      ),
    );
  }
}
