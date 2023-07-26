import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});

  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 25,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 25,
            backgroundColor: color,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  List<Color> colors = const [
    Color(0xffCAD8DE),
    Color(0xffBBDBB4),
    Color(0xffFCF0CC),
    Color(0xffEFD28D),
    Color(0xffBCE784),
    Color(0xff00F6ED),
    Color(0xffF0F465),
    Color(0xff5DD39E),
    Color(0xff348AA7),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 3,
          ),
          child: GestureDetector(
            onTap: () {
              currentIndex = index;
              setState(() {});
            },
            child: ColorItem(
              color: colors[index],
              isActive: currentIndex == index,
            ),
          ),
        ),
      ),
    );
  }
}
