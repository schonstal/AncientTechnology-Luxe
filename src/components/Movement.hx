import luxe.Component;
import luxe.Vector;

class Movement extends Component {
  public var speed:Float = 400;

  var intent:Vector = new Vector(0,0);

  override function init() {
    entity.events.listen('intent:move', onMoveIntent);
  }

  override function update(dt:Float) {
    entity.pos.x += intent.x * dt * speed;
    entity.pos.y += intent.y * dt * speed;
  }

  override function onreset() {
  }

  public function onMoveIntent(e) {
    var direction:Vector = cast e.direction;
    if(luxe.utils.Maths.sign0(direction.x) != 0 && luxe.utils.Maths.sign0(direction.y) != 0) {
      intent = direction.normalized;
    } else {
      intent = direction;
    }
  }
}
