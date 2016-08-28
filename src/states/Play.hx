import luxe.States;
import luxe.tween.Actuate;
import luxe.Vector;
import luxe.Sprite;
import luxe.Color;

class Play extends luxe.State {
  var player:Player;

  public function new() {
    super({ name: 'play' });
  }

  override function init() {
  }

  override function onenter<T>(_:T) {
    if (player == null) {
      player = new Player();
    }
  }

  override function onleave<T>(_:T) {
  }
}
