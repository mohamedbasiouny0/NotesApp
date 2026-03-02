import 'package:flutter/material.dart';
import 'package:test1/shared/widgets/custom_text.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.padding,
    required this.hintText,
    this.maxLines = 1,
  });
  final EdgeInsetsGeometry? padding;
  final String hintText;
  final int maxLines;
  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: .circular(8),
      borderSide: BorderSide(color: Colors.white),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        contentPadding: padding,
        hint: CustomText(text: hintText, fontSize: 17, color: Colors.white),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }
}
