import 'package:flutter/material.dart';
import 'package:test1/shared/widgets/custom_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.titleText,
  });

  final VoidCallback onPressed;
  final Icon icon;
  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        CustomText(text: titleText, fontSize: 26),
        IconButton(
          onPressed: onPressed,
          icon: icon,
          style: IconButton.styleFrom(
            backgroundColor: Color(0xff3C3C3C),
            shape: RoundedRectangleBorder(borderRadius: .circular(8)),
          ),
        ),
      ],
    );
  }
}
