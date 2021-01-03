//Football game//
//Shahzeb Atif//
//ICS4UI//

//Defining Variables for the Stadium and student//
int student = 10; //10 (Don't Change)
int spacing = 80; //80 (Don't Change)
int rows = 26; //26 (Can Change)
int distancex  = 65; //65 (Don't Change)
int distancey = 200; //200 (Don't Change)
Stadium random;

//Setup//
void setup() {
  size(1000,1000);
  
//Creates Stadium using variables from above//
  random = new Stadium(spacing, rows, distancex, distancey);
  random.fillStadium("random");
  frameRate(150); //150 (Don't Change)
}

//Drawing the stadium and field//
void draw() {

//Stadium//
  background(211,211,211);
  stroke(0);
  fill(192,192,192);
  quad(15,25,985,25,950,375,50,375);
  stroke(0);
  fill(211,211,211);
  rect(0,190,1000,20);
  
//Update//
  random.update();
  
//Grass//
  fill(126,200,60);
  rect(0,400,1000,600);

//White paint//
  fill(255);
  rect(0,400,1000,40);
  
//Touchdown Box//
  fill(255);
  rect(0,420,30,580);
  fill(30,144,255);
  rect(0,440,20,560);
  fill(255);
  rect(970,420,30,580);
  fill(220,20,60);
  rect(980,440,20,560);
  
//Lines//
  fill(255);
  rect(100,500,10,500);
  rect(200,500,10,500);
  rect(300,500,10,500);
  rect(400,500,10,500);
  rect(500,500,10,500);
  rect(600,500,10,500);
  rect(700,500,10,500);
  rect(800,500,10,500);
  rect(900,500,10,500);

//Numbers//
  fill(255);
  textSize(30);
  text("10", 85,480);
  text("20", 185,480);
  text("30", 285,480);
  text("40", 385,480);
  text("50", 485,480);
  text("40", 585,480);
  text("30", 685,480);
  text("20", 785,480);
  text("10", 885,480);
}
