//Declare variables
PVector mouse; 
int score;       
int time;
int maxSize;
//Create Array List for storing the Snow
ArrayList<Snowflake> snow = new ArrayList<Snowflake>();
//Declare the catcher
Catcher c = new Catcher();


void setup() {
  size(800, 600);
  mouse = new PVector();        //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  snow.add(new Snowflake(random(width), random(-height * 3, -50)));     //Add the projectile to the Array List
  c = new Catcher();                                             //initialize catcher
  //set score variable to zero
  score = 0;
  //set time limit
  time = 5000;
  //Total amount of objects throughout the game
  maxSize = 100;
}


void draw() {
  maxSize = 100;
  mouse.set(mouseX, 550);             //set value (location) of mouse as mouseX,mouseY
  background(0);   //background of game
  if (snow.size() < maxSize) {
    snow.add(new Snowflake(random(width), random(-height * 3, -50)));     //initialize the starting location of the projectile
  }
  textSize(50);
  text("Score:" + score, 10, 50);

  //For loop to add and remove projectile
    for (int i = snow.size()-1; i >= 0; i--) {
    Snowflake s = snow.get(i);          //Create projectile
    s.display();                        //call function to display projectile
    s.fall();                           //call function to make projectile fall
    //if the projectile is caught it will be reset
    if (s.isCaught(mouse)) {        
      snow.remove(i);
      score = score + 1;
    }
  }
  //Set time to decrease by 1 each frame
  time = time - 1;
  textSize(50);
  text("Time:" + time, 450, 50);
  c.display();    //call function to display catcher
  c.update();     //call function to update the position of the catcher
  //When time reaches zero, final score screen is displayed
  if (time <= 0) {
    background(0);
    textSize(50);
    text("Score:" + score, 200, 150);
  }
}
