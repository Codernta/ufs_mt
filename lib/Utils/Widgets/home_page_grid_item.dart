import 'package:flutter/material.dart';
import 'package:ufs_mt/Utils/Styles/text_styles.dart';

class HomePageGridCard extends StatelessWidget {
  final int index;
  final String title;
  final int count;
  const HomePageGridCard({super.key,
  required this.index,
    required this.title,
    required this.count
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 100,
      padding: EdgeInsets.symmetric(horizontal: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: index == 1 || index == 2?  Color(0xffffd3d3): Color(0xfff3ffe3),
        border: Border.all(
          width: 1,
          color: index == 1 || index == 2?  Color(0xffffcfcf): Color(0xfff7ffc2),
        )
      ),
      // You can change the color as needed
      margin: EdgeInsets.all(8),
      // Margin around each container
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style: gridItemStyle,),
            index == 1 || index == 2 ?Transform(
              transform: Matrix4.translationValues(0,-10, 0),
              child: CircleAvatar(
                radius: 10,
                backgroundColor: const Color(0xffFeb4b4),
                child: Text(count.toString(),style: gridItemStyle,),
              ),
            ):Transform(
              transform: Matrix4.translationValues(0,-10, 0),
              child: CircleAvatar(
                radius: 10,
                backgroundColor: const Color(0xffFeffb6),
                child: Text(count.toString(),style: gridItemStyle,),
              ),
            ),
          ],
        )
      ),
    );
  }
}
