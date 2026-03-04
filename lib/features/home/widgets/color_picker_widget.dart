import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/cubits/add_note_cubit/add_note_cubit.dart';

class ColorPickerWidget extends StatefulWidget {
  const ColorPickerWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ColorPickerWidgetState createState() => _ColorPickerWidgetState();
}

class _ColorPickerWidgetState extends State<ColorPickerWidget> {
  List<Color> pastelColors = [
    Color(0xFFFFF2C6),
    Color(0xFFFFF8DE),
    Color(0xFFAAC4F5),
    Color(0xFF8CA9FF),
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
              BlocProvider.of<AddNoteCubit>(context).updateColor(color);
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
