class Catcher {
  //fields
  PVector loc;
  int diam;

  //constructor
  Catcher() {
    diam = 40;
    loc = new PVector();
  }

  //methods
  void display() {
    fill(255, 0, 0);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }

  void update() {
    loc.set(mouseX, mouseY);
  }
}