import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: KPrimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Center(
          child: Text(
        'Add',
        style: TextStyle(
            fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
      )),
    );
  }
}
