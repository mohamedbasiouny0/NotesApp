import 'package:flutter/material.dart';

class ColorPickerWidget extends StatefulWidget {
  const ColorPickerWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ColorPickerWidgetState createState() => _ColorPickerWidgetState();
}

class _ColorPickerWidgetState extends State<ColorPickerWidget> {
  List<Color> pastelColors = [
    Color(0xFFFFC1CC),
    Color(0xFFFFF1C1),
    Color(0xFFC1FFD7),
    Color(0xFFC1D4FF),
    Color(0xFFE8C1FF),
    Color(0xFFFFE0C1),
    Color(0xFFBCE0FD),
    Color(0xFFFFCFC1),
    Color(0xFFD1FFC1),
    Color(0xFFFFF4C1),
    Color(0xFFC1FFF3),
    Color(0xFFF5C1FF),
  ];

  Color? selectedColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: pastelColors.length,
        itemBuilder: (context, index) {
          Color color = pastelColors[index];
          bool isSelected = selectedColor == color;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedColor = color;
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 6),
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: isSelected ? Border.all(color: color, width: 2) : null,
              ),
              child: CircleAvatar(backgroundColor: color, radius: 20),
            ),
          );
        },
      ),
    );
  }
}
