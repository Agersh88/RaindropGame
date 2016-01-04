PVector mouse;   //declare a P
int count = 50;
ArrayList<Snowflake> snow = new ArrayList<Snowflake>();
//Snowflake[] s = new Snowflake[count];      //declare a new Raindrop called r
Catcher c = new Catcher();

// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  size(800, 600);
  mouse = new PVector();                //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  snow.add(new Snowflake(random(width), random(-height * 3, -50)));
  c = new Catcher();
  //for (int i = 0; i < count; i++) {
  //s[i] = new Snowflake(random(width), random(-height * 3, -50));   //Initialize r. The parameters used are the initial x and y positions
}

void draw() {
  mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
  background(0, 200, 255);
  snow.add(new Snowflake(random(width), random(-height * 3, -50)));
  
  for (int i = snow.size()-1; i >= 0; i--){
   Snowflake s = snow.get(i);
   s.display();
   s.fall();
   if (s.isCaught(mouse)){
     snow.remove(i);
   }
  }
  c.display();
  c.update();
  //for (int i = 0; i < count; i++) {
  //  s[i].fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
  //  s[i].display();      //display the raindrop
  //  if (s[i].isInContactWith(mouse)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
  //    s[i].reset();       //if it is, reset the raindrop
  //  }
  //  if (s[i].loc.y > height + s[i].diam/2) {     //check to see if the raindrop goes below the bottom of the screen
  //    s[i].reset();                           //if it does, reset the raindrop
  //  }
  //}
}