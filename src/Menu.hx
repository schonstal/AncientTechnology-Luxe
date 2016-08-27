import luxe.States;
import luxe.tween.Actuate;
import luxe.Vector;
import luxe.Sprite;
import luxe.Color;
import luxe.Input;

class Menu extends luxe.State {
  var block:Sprite;
  var inputReady:Bool = false;

  public function new() {
    super({ name: 'menu' });

    block = new Sprite({
      name: 'block sprite',
      pos: new Vector(Luxe.screen.mid.x, 0),
      color: new Color().rgb(0xf94b04),
      size: new Vector(128, 128)
    });
  }

  override function onmouseup(e:MouseEvent) {
    if(!inputReady) return;
    Luxe.events.fire('state.change', { state: 'play' });
  }

  override function init() {
  }

  override function onenter<T>(_:T) {
    Actuate.tween(block.pos, 1, { y: Luxe.screen.mid.y }).ease(luxe.tween.easing.Cubic.easeOut).onComplete(function() {
      inputReady = true;
    });
  }

  override function onleave<T>(_:T) {
    Actuate.tween(block.pos, 1, { y: -block.size.y/2 }).ease(luxe.tween.easing.Cubic.easeOut);
    inputReady = false;
  }
}
