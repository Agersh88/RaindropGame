PVector mouse;   //declare a P
Snowflake s;      //declare a new Raindrop called r

// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  size(800, 600);
  mouse = new PVector();                //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  s = new Snowflake(random(width), 0);   //Initialize r. The parameters used are the initial x and y positions
}

void draw() {
  mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
  background(0, 200, 255);
  s.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
  s.display();      //display the raindrop
  if (s.isInContactWith(mouse)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
    s.reset();                         //if it is, reset the raindrop
  }
  if (s.loc.y > height + s.diam/2) {     //check to see if the raindrop goes below the bottom of the screen
    s.reset();                           //if it does, reset the raindrop
  }
}