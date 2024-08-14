import 'package:flutter/material.dart';
import 'package:redesigned_outlook_app/constants/constants.dart';
import 'package:redesigned_outlook_app/extensions/extensions.dart';

class CounterBadge extends StatelessWidget {
  const CounterBadge({
    super.key,
    required this.count,
  });

  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
          color: kBadgeColor, borderRadius: BorderRadius.circular(9)),
      child: Text(
        count.toString(),
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
      ),
    ).addNeumorphism(
      offset: const Offset(4, 4),
      borderRadius: 9,
      blurRadius: 4,
      topShadowColor: Colors.white,
      bottomShadowColor: const Color(0xFF30384D).withOpacity(0.3),
    );
  }
}
