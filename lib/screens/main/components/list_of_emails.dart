import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:redesigned_outlook_app/constants/constants.dart';
import 'package:redesigned_outlook_app/models/Email.dart';

import 'email_card.dart';

class ListOfEmails extends StatelessWidget {
  const ListOfEmails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        color: kBgDarkColor,
        child: Column(
          children: [
            TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                hintText: "Search",
                fillColor: kBgLightColor,
                filled: true,
                suffixIcon: SvgPicture.asset(
                  "assets/Icons/Search.svg",
                  width: 24,
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: kDefaultPadding),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/Icons/Angle down.svg",
                  width: 16,
                  color: Colors.black,
                ),
                const SizedBox(width: 5),
                const Text(
                  "Sort by date",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                MaterialButton(
                  minWidth: 20,
                  onPressed: () {},
                  child: SvgPicture.asset(
                    "assets/Icons/Sort.svg",
                    width: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: kDefaultPadding),
            Expanded(
              child: ListView.builder(
                itemCount: emails.length,
                itemBuilder: (context, index) => EmailCard(
                  isActive: index == 0,
                  email: emails[index],
                  press: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
