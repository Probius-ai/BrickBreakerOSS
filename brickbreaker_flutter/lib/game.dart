import 'dart:async';
import 'dart:ui';

import 'package:brickbreaker_flutter/brick.dart';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';

class BrickBreakerGame  extends FlameGame{
  static double grid = 0.1;
  static late Vector2 gridSize;

  final  World world = World();
  late   CameraComponent cameraComponent = CameraComponent(world: world)
  ..viewfinder.anchor = Anchor.topLeft;

  List<Brick> bricks = [];

  @override
  void onLoad() async{
    // TODO: implement onLoad
    await Flame.device.setLandscapeLeftOnly();
    await Future.delayed(const Duration(seconds: 1)); // wait 1s for flame.size to update

    gridSize = Vector2(size.x * grid, size.y *grid); // get phone display size
  }

  @override
  void onMount() {
    //set how much bricks you want
    populateBricks(4, 8);
    //display brick
    world.addAll(bricks);
    addAll([cameraComponent, world]);
  }

  @override
  void update(double dt) {
    super.update(dt);
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
  }

  @override
  Color backgroundColor() {
    return const Color.fromARGB(255, 163, 204, 163);
  }

  void populateBricks(int rows, int columns){
    Vector2 margin = Vector2(gridSize.x *0.2, gridSize.y *0.1);
    double totalWidth  = columns *(gridSize.x + margin.x) - margin.x;
    double firstPosX = (size.x - totalWidth)/2;  // points the center for brick

    // Create Bricks
    for(int i = 0; i<rows; i++){
      for(int j =0; j<columns;j++){
        bricks.add(Brick(gridSize: gridSize)
        ..position = Vector2(firstPosX + (gridSize.x+margin.x)*j, margin.y + (gridSize.y + margin.y)*i));
      }
    }
  }
}