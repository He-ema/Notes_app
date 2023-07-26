import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/note_model.dart';
import 'colors_list_view.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.note});

  final NoteModel note;
  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  int currentIndex = 0;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 3,
          ),
          child: GestureDetector(
            onTap: () {
              currentIndex = index;
              widget.note.color = kColors[currentIndex].value;
              setState(() {});
            },
            child: ColorItem(
              color: kColors[index],
              isActive: currentIndex == index,
            ),
          ),
        ),
      ),
    );
  }
}
