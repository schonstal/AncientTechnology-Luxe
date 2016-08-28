import luxe.collision.Collision;
import luxe.collision.shapes.Shape;
import luxe.collision.shapes.Polygon;
import luxe.Vector;
import luxe.utils.Maths;

class Simulation extends luxe.Physics.PhysicsEngine {
  var physicsBodies:Array<PhysicsBody>;

  public function new() {
    super();

    paused = true;
    physicsBodies = new Array<PhysicsBody>();
  }

  override public function init() {
    gravity.set_xyz(0, 0, 0);
    setupEventListeners();
  }

  override public function update() {
    if(paused) return;

    updateAcceleration();
    updateVelocity();
  }

  function updateAcceleration() {
    for (body in physicsBodies) {
      body.velocity.x += body.acceleration.x * Luxe.physics.step_delta;
      body.velocity.y += body.acceleration.y * Luxe.physics.step_delta;
    }
  }

  function updateVelocity() {
    for (body in physicsBodies) {
      body.shape.position.x += body.velocity.x * Luxe.physics.step_delta;
      body.shape.position.y += body.velocity.y * Luxe.physics.step_delta;
    }
  }

  function setupEventListeners() {
    Luxe.events.listen('physics.register', registerBody);
    Luxe.events.listen('physics.remove', removeBody);
  }

  function registerBody(event) {
    physicsBodies.add(event.physicsBody);
  }

  function removeBody(event) {
    physicisBodies.remove(event.physicsBody);
  }
}
