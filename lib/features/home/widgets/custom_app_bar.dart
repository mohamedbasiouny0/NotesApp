import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/shared/widgets/custom_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        CustomText(text: 'Notes', fontSize: 26),
        IconButton(
          onPressed: onPressed,
          icon: Icon(CupertinoIcons.search),
          style: IconButton.styleFrom(
            backgroundColor: Color(0xff3C3C3C),
            shape: RoundedRectangleBorder(borderRadius: .circular(8)),
          ),
        ),
      ],
    );
  }
}
