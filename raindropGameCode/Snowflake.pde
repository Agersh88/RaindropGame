class Snowflake {
  //fields
  PVector loc, vel, acc;
  int diam;

  //constructor
  Snowflake(float x, float y) {
    diam = 20;
    loc = new PVector(random(diam, width-diam), -100);
    vel = PVector.random2D();
    acc = PVector.random2D();
  }

  //methods
  void display() {
    fill(0, 0, 150);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  void fall() {
    loc.add(vel);
    vel.add(acc);
  }
  void reset() {
    if (loc.y >= height) {
      loc.y = -100;
    }
  }
  void isInContactWith(){
    
  }
}