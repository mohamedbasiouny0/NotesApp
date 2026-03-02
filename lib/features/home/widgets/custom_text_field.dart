
import 'package:flutter/material.dart';
import 'package:test1/shared/widgets/custom_text.dart';

class CustomtextField extends StatelessWidget {
  const CustomtextField({super.key, this.padding, required this.hintText});
  final EdgeInsetsGeometry? padding;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      decoration: InputDecoration(
        contentPadding: padding,
        hint: CustomText(text: hintText, fontSize: 17, color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderRadius: .circular(8),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: .circular(8),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
