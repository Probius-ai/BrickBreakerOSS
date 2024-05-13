import 'dart:ui';

import 'package:brickbreaker_flutter/game.dart';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';

class Brick  extends PositionComponent with HasGameRef<BrickBreakerGame>, CollisionCallbacks{
  late final Vector2 gridSize;

  Brick({required this.gridSize}) : super(size: gridSize);
  //Configure Brick Color
  Paint paint = Paint()..color =  Color.fromARGB(255, 255, 88, 68);

  @override
  void onLoad() {
    add(RectangleHitbox());
  }

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

  @override
  void onCollision(Set<Vector2> intersectionPoints, PositionComponent other) {
    super.onCollision(intersectionPoints, other);
    game.bricks.remove(this);
    game.world.remove(this);
  }
}