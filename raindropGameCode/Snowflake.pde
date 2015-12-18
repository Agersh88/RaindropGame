class Snowflake {
  //fields
  PVector loc, vel, acc;
  int diam;

  //constructor
  Snowflake(float x, float y) {
    diam = 20;
    loc = new PVector(x, y);
    vel = new PVector(0, .05);
    acc = new PVector(0, .05);
  }

  //methods
  void display() {
    fill(255, 255, 255);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  void fall() {
    loc.add(vel);
    vel.add(acc);
  }
  void reset() {
    loc.y = 0;
    vel.set(0, 0);
  }

  boolean isInContactWith(PVector otherPoint) {
    if (loc.dist(otherPoint) < diam) {
      return true;
    } else {
      return false;
    }
  }
}