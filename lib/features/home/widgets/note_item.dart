import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:test1/shared/widgets/custom_text.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final formattedDate = DateFormat('MMMM d,yyyy').format(now);

    return Container(
      padding: .all(32),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * .5,
      decoration: BoxDecoration(
        color: Colors.amber.shade100,
        borderRadius: .circular(16),
      ),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Column(
            crossAxisAlignment: .start,
            children: [
              CustomText(
                text: 'Flutter tips',
                color: Colors.black,
                fontWeight: .w600,
                fontSize: 24,
              ),
              Gap(16),
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: CustomText(
                  text:
                      'Flutter tips and trics with me, My name is Mohamed Basiouny i\'m a Flutter developer',
                  color: Colors.black54,
                  fontWeight: .w400,
                  fontSize: 18,
                ),
              ),
            ],
          ),

          Column(
            mainAxisAlignment: .spaceBetween,
            crossAxisAlignment: .end,
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: Icon(CupertinoIcons.trash_fill),
                style: IconButton.styleFrom(
                  foregroundColor: Colors.black,
                  overlayColor: Colors.amber.shade100,
                ),
              ),
              CustomText(text: formattedDate, color: Colors.black),
            ],
          ),
        ],
      ),
    );
  }
}
