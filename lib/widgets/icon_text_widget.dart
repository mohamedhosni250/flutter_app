import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/small_text.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const IconTextWidget(
      {Key? key, required this.icon, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
        ),
        const SizedBox(
          width: 5,
        ),
        SmallText(text: text)
      ],
    );
  }
}
