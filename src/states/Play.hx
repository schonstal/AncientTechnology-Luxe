import luxe.States;
import luxe.tween.Actuate;
import luxe.Vector;
import luxe.Sprite;
import luxe.Color;

class Play extends luxe.State {
  var player:Player;

  public function new() {
    super({ name: 'play' });
    player = new Player();
  }

  override function init() {
  }

  override function onenter<T>(_:T) {
  }

  override function onleave<T>(_:T) {
  }
}
