import luxe.GameConfig;
import luxe.Input;
import luxe.Sprite;
import luxe.Color;
import luxe.Vector;
import luxe.States;

class Player extends Sprite {
  public function new() {
    super({
      name: 'player',
      pos: Luxe.screen.mid,
      size: new Vector(32, 32)
    });

    add(new Movement({ name: 'movement' }));
    add(new KeyboardInput({ name: 'keyboard' }));
  }
}
