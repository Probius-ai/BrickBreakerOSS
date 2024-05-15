import 'dart:ui';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';

class Bar extends PositionComponent with DragCallbacks{
  final Vector2 gridSize;

  Bar({required this.gridSize}) : super(size: Vector2(gridSize.x*2, gridSize.y /2));

  Paint paint = Paint()..color =  Color.fromARGB(255, 214, 230, 245);

  @override
  void onLoad() {
    add(RectangleHitbox());
  }

  @override
  void render(Canvas canvas) {
    canvas.drawRRect(getRRect(), paint);
  }

  RRect getRRect() {
    // Configure Rectangle Shape
    return RRect.fromRectAndRadius(size.toRect(),  Radius.circular(gridSize.x*0.1));
  }

  @override
  void onDragUpdate(DragUpdateEvent event) {
    // TODO: implement onDragUpdate
    super.onDragUpdate(event);
    x += event.localDelta.x;
  }
}