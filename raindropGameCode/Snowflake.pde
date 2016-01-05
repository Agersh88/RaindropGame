class Snowflake {
  //fields
  PVector loc, vel, acc;
  int diam;
  float M;

  //constructor
  Snowflake(float x, float y) {
    M = random(0,9);
    diam = 20;
    loc = new PVector(x, y);
    vel = new PVector(0, 0);
    acc = new PVector(0, .01);
  }

  //methods
  void display() {
    fill(255,255,255);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
    text(M, loc.x, loc.y);
  }
  void fall() {
    loc.add(vel);
    vel.add(acc);
  }
  void reset() {
    loc.y = 0;
    vel.set(0, 0);
  }

  boolean isCaught(PVector otherPoint) {
    if (loc.dist(otherPoint) <= diam + 20) {
      return true;
    } else {
      return false;
    }
  }
}
