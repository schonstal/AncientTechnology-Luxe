import luxe.Component;
import luxe.Vector;
import luxe.Input.Key;

class PhysicsBody extends Component {
  public var shape:Shape;
  public var acceleration:Vector;
  public var velocity:Vector;

  override function init() {
    shape = new Shape();
  }

  override function update(dt:Float) {
  }
}
