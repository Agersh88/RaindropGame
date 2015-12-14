class Snowflake {
  //fields
  PVector loc, vel, acc;
  int diam;

  //constructor
  Snowflake(float x, float y) {
    diam = 20;
    loc = new PVector(random(diam, width-diam), -100);
    vel = new PVector(0,0);
    acc = new PVector(0,.05);
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
    if (loc.y >= height) {
      loc.y = -100;
      vel.set(0,0);
    }
  }
  //void isInContactWith(){
    
  //}
}