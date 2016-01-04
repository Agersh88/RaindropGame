PVector mouse;   //Declare mouse vector
float score;
float time;
float fScore;
//Array List that allows the cycle of the projectile
ArrayList<Snowflake> snow = new ArrayList<Snowflake>();
//Declare the catcher
Catcher c = new Catcher();


void setup() {
  size(800, 600);
  mouse = new PVector();        //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  snow.add(new Snowflake(random(width), random(-height * 3, -50)));     //Add the projectile to the Array List
  c = new Catcher();                                             //initialize catcher
  score = 0;
  time = 5000;
  fScore = 0;
}


void draw() {
  mouse.set(mouseX, 550);             //set value (location) of mouse as mouseX,mouseY
  background(0, 200, 255);   //background of game
  snow.add(new Snowflake(random(width), random(-height * 3, -50)));     //initialize the starting location of the projectile
  textSize(50);
  text("Score:" + score, 10, 50);

  //For loop to add and remove projectile
  for (int i = snow.size()-1; i >= 0; i--) {
    Snowflake s = snow.get(i);          //Create projectile
    s.display();                        //call function to display projectile
    s.fall();                           //call function to make projectile fall
    //if the projectile is caught it will be removed
    if (s.isCaught(mouse)) {        
      snow.remove(i);
      score = score + 1;
      
    }
  }
  time = time - 1;
  textSize(50);
  text("Time:" + time, 450, 50);
  c.display();    //call function to display catcher
  c.update();     //call function to update the position of the catcher
  if (time <= 0) {
        score = score;
        time = time;
        fScore = score + time;
        background(0);
        textSize(50);
        text("Score:" + score, 200, 150);
      }
}