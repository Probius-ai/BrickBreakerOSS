import 'dart:async';
import 'dart:ui';

import 'package:flame/flame.dart';
import 'package:flame/game.dart';

class BrickBreakerGame  extends FlameGame{
  static double grid = 0.1;
  static late Vector2 gridSize;

  @override
  void onLoad() async{
    // TODO: implement onLoad
    await Flame.device.setLandscapeLeftOnly();
    await Future.delayed(const Duration(seconds: 1)); // wait 1s for flame.size to update

    gridSize = Vector2(size.x * grid, size.y *grid); // get phone display size
  }

  @override
  void onMount() {
    // TODO: implement onMount
    
  }

  @override
  void update(double dt) {
    // TODO: implement update
    super.update(dt);
  }

  @override
  void render(Canvas canvas) {
    // TODO: implement render
    super.render(canvas);
  }

  @override
  Color backgroundColor() {
    // TODO: implement backgroundColor
    return const Color.fromARGB(255, 163, 204, 163);
  }
}