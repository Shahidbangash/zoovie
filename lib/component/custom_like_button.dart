import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:zoovie/const/app_color.dart';

class CustomLikeButton extends StatelessWidget {
  const CustomLikeButton({
    super.key,
    this.icon,
    this.color,
  });
  final Widget? icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return LikeButton(
      circleColor:
          const CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
      bubblesColor: const BubblesColor(
        dotPrimaryColor: AppColor.primaryColor,
        dotSecondaryColor: Colors.white,
      ),
      likeBuilder: (bool isLiked) {
        return Icon(
          Icons.favorite,
          color: isLiked ? Colors.red : color ?? Colors.white,
          size: 25,
        );
      },
    );
  }
}
