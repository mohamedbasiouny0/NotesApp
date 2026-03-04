import 'package:flutter/material.dart';
import 'package:test1/shared/widgets/custom_text.dart';

class CustomFormTextField extends StatelessWidget {
  const CustomFormTextField({
    super.key,
    this.padding,
    required this.hintText,
    this.maxLines = 1,
    this.onSaved,
    required this.controller,
    this.onChanged,
  });
  final EdgeInsetsGeometry? padding;
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  final TextEditingController controller;
  final void Function(String)? onChanged;

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: .circular(8),
      borderSide: BorderSide(color: Colors.white),
    );
  }

  OutlineInputBorder errorBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Color(0xffBD9290)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onSaved: onSaved,
      maxLines: maxLines,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'This Field is required';
        }
        return null;
      },
      cursorColor: Colors.white,
      decoration: InputDecoration(
        contentPadding: padding,
        hint: CustomText(text: hintText, fontSize: 17, color: Colors.white),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        errorBorder: errorBorder(),
        focusedErrorBorder: errorBorder(),
      ),
    );
  }
}
