import 'package:flutter/material.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/views/widgets/custom_text_field.dart';

import 'custom_buttom.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              hint: 'Text',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'content',
              maxLines: 5,
            ),
            SizedBox(
              height: 64,
            ),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
