class Snowflake {
  int diam;
  PVector loc;
  PVector vel;
  PVector acc;

Snowflake(float x, float y) {
    diam = 20;
    loc = new PVector(x, y);
    vel = new PVector(0, 0);
    acc = new PVector(0, .01);
  }

  //methods
  void display() {              //Function to create the snowflake
    noCursor();
    fill(255,255,255);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  void fall() {                 //Function to add velocity and acceleration to the snow
    loc.add(vel);
    vel.add(acc);
  }

  //When the flake touches the catcher it resets
  boolean isCaught(PVector otherPoint) {
    if (loc.dist(otherPoint) <= diam + 20) {
      return true;
    } else {
      return false;
    }
  }
}

