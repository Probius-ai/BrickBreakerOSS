import 'dart:async';
import 'dart:ui';

import 'package:brickbreaker_flutter/game.dart';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';

class BackGround extends RectangleComponent with HasGameRef<BrickBreakerGame>{
  
  BackGround()
    : super(
        paint: Paint()..color = const Color.fromARGB(255, 163, 204, 163),
        children: [RectangleHitbox()],
    );

  
  static double grid = 0.1;
  static late Vector2 gridSize;

  @override
  onLoad() async{
    super.onLoad();
    size = Vector2(size.x * grid, size.y *grid);
    gridSize = Vector2(size.x * grid, size.y *grid); // get phone display size
  }

}