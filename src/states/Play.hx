import luxe.States;
import luxe.tween.Actuate;
import luxe.Vector;
import luxe.Sprite;
import luxe.Color;

class Play extends luxe.State {
  var block:Sprite;

  public function new() {
    super({ name: 'play' });

    block = new Sprite({
      name: 'block sprite',
      pos: new Vector(Luxe.screen.mid.x, -64),
      color: new Color().rgb(0xaa44aa),
      size: new Vector(128, 128)
    });
  }

  override function init() {
  }

  override function onenter<T>(_:T) {
    Actuate.tween(block.pos, 1, { y: Luxe.screen.mid.y }).ease(luxe.tween.easing.Cubic.easeOut);
  }

  override function onleave<T>(_:T) {
    Actuate.tween(block.pos, 1, { y: -block.size.y/2 }).ease(luxe.tween.easing.Cubic.easeOut);
  }
}
