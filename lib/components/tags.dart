import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:redesigned_outlook_app/constants/constants.dart';

class Tags extends StatelessWidget {
  const Tags({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset("assets/Icons/Angle down.svg", width: 16),
            const SizedBox(width: kDefaultPadding / 4),
            SvgPicture.asset("assets/Icons/Markup.svg", width: 20),
            const SizedBox(width: kDefaultPadding / 2),
            Text(
              "Tags",
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: kGrayColor),
            ),
            const Spacer(),
            MaterialButton(
              padding: const EdgeInsets.all(10),
              minWidth: 40,
              onPressed: () {},
              child: const Icon(
                Icons.add,
                color: kGrayColor,
                size: 20,
              ),
            )
          ],
        ),
        const SizedBox(height: kDefaultPadding / 2),
        buildTag(context, color: const Color(0xFF23CF91), title: "Design"),
        buildTag(context, color: const Color(0xFF3A6FF7), title: "Work"),
        buildTag(context, color: const Color(0xFFF3CF50), title: "Friends"),
        buildTag(context, color: const Color(0xFF8338E1), title: "Family"),
      ],
    );
  }

  InkWell buildTag(
    BuildContext context, {
    required Color color,
    required String title,
  }) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.fromLTRB(kDefaultPadding * 1.5, 10, 0, 10),
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/Icons/Markup filled.svg",
              height: 18,
              // color: color,
            ),
            const SizedBox(width: kDefaultPadding / 2),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: kGrayColor),
            ),
          ],
        ),
      ),
    );
  }
}
