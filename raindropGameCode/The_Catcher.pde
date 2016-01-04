class Catcher {
  //FIELDS
  
  PVector loc;
  int diam;

  //CONSTRUCTOR

  Catcher() {
    diam = 40;
    loc = new PVector();
  }

  //METHODS

  void display() {
    fill(255, 0, 0);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }

  void update() {
    loc.set(mouseX, mouseY);
  }
}