import 'dart:ui';

import 'package:flame/components.dart';

class Brick  extends PositionComponent{
  late final Vector2 gridSize;

  Brick({required this.gridSize}) : super(size: gridSize);
  //Configure Brick Color
  Paint paint = Paint()..color =  Color.fromARGB(255, 255, 88, 68);

  @override
  void render(Canvas canvas) {
    // TODO: implement render
    // Draw Brick to Rectangle
    canvas.drawRRect(getRRect(), paint);
  }

  RRect getRRect() {
    // Configure Rectangle Shape
    return RRect.fromRectAndRadius(size.toRect(),  Radius.circular(gridSize.x*0.1));
  }
}