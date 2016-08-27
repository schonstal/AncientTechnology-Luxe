import luxe.GameConfig;
import luxe.Input;
import luxe.Sprite;
import luxe.Color;
import luxe.Vector;
import luxe.States;

class Main extends luxe.Game {
  var states:States;

  override function config(config:GameConfig) {
    config.window.title = 'Ancient Technology';
    config.window.width = 960;
    config.window.height = 640;
    config.window.fullscreen = false;

    return config;
  }

  override function ready() {
    createStates();
    setupEventListeners();
  }

  override function onkeyup(e:KeyEvent) {
    if(e.keycode == Key.escape) {
      Luxe.shutdown();
    }
  }

  override function update(dt:Float) {
  }

  function setupEventListeners() {
    Luxe.events.listen('state.change', onChangeState);
  }

  function createStates() {
    states = new States({ name: 'states' });
    states.add(new Menu());
    states.add(new Play());
    // Add more states here

    states.set('menu');
  }

  function onChangeState(e) {
    states.set(e.state);
  }
}
