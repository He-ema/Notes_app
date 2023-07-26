import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon, this.onPressed});

  final void Function()? onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.05),
      ),
      child: Center(
          child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                icon,
                size: 28,
              ))),
    );
  }
}
