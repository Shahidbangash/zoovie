import 'dart:math'; // Import the math library
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PolygonShapeComponent extends StatelessWidget {
  // Number of sides for the polygon

  const PolygonShapeComponent({
    required this.imageUrl,
    super.key,
    this.sides = 6, // Default to hexagon
  });
  final String imageUrl;
  final int sides;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: PolygonClipper(sides),
      child: SizedBox(
        width: 200.w,
        height: 200.h,
        child: Image.asset(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

// Custom clipper for creating polygon shapes
class PolygonClipper extends CustomClipper<Path> {
  PolygonClipper(this.sides);
  final int sides;

  @override
  Path getClip(Size size) {
    final radius = size.width / 1.7;
    final angle = (2 * pi) / sides;
    final path = Path();
    final center = Offset(
      size.width / 2,
      size.height / 2.1,
    );

    for (var i = 0; i < sides; i++) {
      final x = center.dx + radius * cos(i * angle); // Use cos directly
      final y = center.dy + radius * sin(i * angle); // Use sin directly
      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
