PVector mouse;   //Declare mouse vector
//Array List that allows the cycle of the projectile
ArrayList<Snowflake> snow = new ArrayList<Snowflake>();
//Declare the catcher
Catcher c = new Catcher();


void setup() {
  size(800, 600);
  mouse = new PVector();        //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  snow.add(new Snowflake(random(width), random(-height * 3, -50)));     //Add the projectile to the Array List
  c = new Catcher();                                             //initialize catcher
}


void draw() {
  mouse.set(mouseX, mouseY);             //set value (location) of mouse as mouseX,mouseY
  background(0);   //background of game
  snow.add(new Snowflake(random(width), random(-height * 3, -50)));     //initialize the starting location of the projectile

  //For loop to add and remove projectile
  for (int i = snow.size()-1; i >= 0; i--) {
    Snowflake s = snow.get(i);          //Create projectile
    s.display();                        //call function to display projectile
    s.fall();                           //call function to make projectile fall
    //if the projectile is caught it will be removed
    if (s.isCaught(mouse)) {        
      snow.remove(i);
    }
  }
  c.display();    //call function to display catcher
  c.update();     //call function to update the position of the catcher
}