import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/shared/widgets/custom_text.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.isLoading,
  });
  final VoidCallback onPressed;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,

      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey.shade900,
        shape: RoundedRectangleBorder(borderRadius: .circular(8)),
        fixedSize: Size(MediaQuery.of(context).size.width, 55),
      ),
      child: isLoading
          ? CupertinoActivityIndicator()
          : CustomText(text: 'Add a note'),
    );
  }
}
