import luxe.Component;
import luxe.Vector;
import luxe.Input.Key;

class KeyboardInput extends Component {
  override function init() {
    bindKeys();
  }

  override function update(dt:Float) {
    var direction:Vector = new Vector(0,0);

    if(Luxe.input.inputdown('up')) {
      direction.y = -1;
    }
    if(Luxe.input.inputdown('down')) {
      direction.y = 1;
    }
    if(Luxe.input.inputdown('left')) {
      direction.x = -1;
    }
    if(Luxe.input.inputdown('right')) {
      direction.x = 1;
    }

    entity.events.fire('intent:move', {
      direction: direction
    });
  }

  override function onreset() {
  }

  function bindKeys() {
    Luxe.input.bind_key('up', Key.up);
    Luxe.input.bind_key('up', Key.key_w);

    Luxe.input.bind_key('down', Key.down);
    Luxe.input.bind_key('down', Key.key_s);

    Luxe.input.bind_key('left', Key.left);
    Luxe.input.bind_key('left', Key.key_a);

    Luxe.input.bind_key('right', Key.right);
    Luxe.input.bind_key('right', Key.key_d);
  }
}
