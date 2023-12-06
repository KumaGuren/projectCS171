//Calling our variables

PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
PImage img8;
PImage img9;
PImage img10;

int lives = 3;
int scoreCount = 0;
int totalRenew = 0;
int totalNonRenew = 0;

/*
THE WAY HOW MY GAME WORKS IS THAT YOU HAVE 2 CHOICES ON YOUR KEYBOARD THAT STARTS WITH 
  THE FIRST TWO KEYS ON YOUR KEYBOARD NOT GOING IN ALPHABETICAL ORDER (e.g. Q and W, E and R, 
  T and Y) and one of these keys is the right answer and the other is wrong
  
  FIRST KEY(e.g.Q,E,T,U,O) = YOU THINK IT'S A RENEWABLE SOURCE OF ENERGY
  SECOND KEY(e.g.W,R,Y,I,P) = YOU THINK IT'S A NON-RENEWABLE SOURCE OF ENERGY
  
  Good Luck!!! 
*/ 

void setup() {

  //first we will set up the png image files that i have imported


  //sprite for geothermal energy
  img1 = loadImage("gEnergy.png");
  size(400, 400);
  img1.resize(400, 200);


  //sprite for bioElectricity/energy
  img2 = loadImage("bEnergy.png");
  size(400, 400);
  img2.resize(400, 200);


  //sprite for Nuclear Energy
  img3 = loadImage("nEnergy.png");
  size(200, 200);
  img3.resize(400, 200);


  //sprite for solar panel Energy / solar energy
  img4 = loadImage("sPanel.png");
  size(200, 200);
  img4.resize(400, 200);


  //sprite for coal
  img5 = loadImage("coal.png");
  size(200, 200);
  img5.resize(400, 200);


  //sprite for oil
  img6 = loadImage("oil.png");
  size(200, 200);
  img6.resize(400, 200);


  //sprite for phosphate
  img7 = loadImage("phosphate.png");
  size(200, 200);
  img7.resize(400, 200);


  //sprite for Wind Turbines
  img8 = loadImage("wTurbine.png");
  size(200, 200);
  img8.resize(400, 200);


  //sprite for Hydroelectric Power
  img9 = loadImage("hPower.png");
  size(200, 200);
  img9.resize(400, 200);


  //sprite for peat
  img10 = loadImage("peat.png");
  size(200, 200);
  img10.resize(400, 200);


  size(1140, 720); //size of window
}

//our boolean factors that will make our sprites then reappear

boolean showImg1 = true;
boolean showImg2 = true;
boolean showImg3 = true;
boolean showImg4 = true;
boolean showImg5 = true;
boolean showImg6 = true;
boolean showImg7 = true;
boolean showImg8 = true;
boolean showImg9 = true;
boolean showImg10 = true;

void draw() {


  background(0, 100, 0);
  fill(255);

  //red semi-circle that will serve as our basket
  fill(255, 0, 0);
  arc(175, 600, 160, 160, 0.5, PI+QUARTER_PI, CHORD);

  //green semi-cirle that will serve as our other basket
  fill(0, 255, 0);
  arc(1000, 600, 160, 160, 0.5, PI+QUARTER_PI, CHORD);

  //this part of the code is what will allow us to view our imported sprites that we obtained online when our code is running
  /* a part of code that helped me when doing this part of my project */

  //Geothermal Energy
  if (showImg1)
  {
    image(img1, 320, 75, 200, 200);
  }

  //BioElectricity
  if (showImg2)
  {
    image(img2, 570, 75, 200, 200);
  }

  //nuclear energy
  if (showImg3)
  {
    image(img3, 850, 25, 200, 150);
  }

  //solar panel
  if (showImg4)
  {
    image(img4, 110, 320, 200, 200);
  }

  //coal
  if (showImg5)
  {
    image(img5, 400, 300, 200, 200);
  }

  //oil
  if (showImg6)
  {
    image(img6, 950, 350, 200, 150);
  }

  //phosphate
  if (showImg7)
  {
    image(img7, 40, 100, 200, 200);
  }

  //wind turbine
  if (showImg8)
  {
    image(img8, 625, 550, 200, 200);
  }

  //hydroelectric power
  if (showImg9)
  {
    image(img9, 650, 300, 220, 200);
  }

  //peat
  if (showImg10)
  {
    image(img10, 325, 500, 220, 200);
  }
  
  //text that tells you what you have to press to guess
  
  //geothermal
  textSize(32);
  fill(255,0,0);
  text("Q or W?", 320, 75);
  
  //bioElectricity
  textSize(32);
  fill(255,0,0);
  text("E or R?", 570, 75);
  
  //Nuclear energy
  textSize(32);
  fill(255,0,0);
  text("T or Y?" , 850, 25);
  
  //solar panel
  textSize(32);
  fill(255,0,0);
  text("U or I?" , 150, 370);
  
  //coal
  textSize(32);
  fill(255,0,0);
  text("O or P?" , 420, 350);
  
  //oil
  textSize(32);
  fill(255,0,0);
  text("A or S?" , 950, 350);
  
  //phosphate
  textSize(32);
  fill(255,0,0);
  text("D or F?" , 40, 120);
  
  //wind turbine
  textSize(32);
  fill(255,0,0);
  text("G or H?" , 625, 550);
  
  //hydroelectric power
  textSize(32);
  fill(255,0,0);
  text("J or K?" , 650, 300);
  
  //peat
  textSize(32);
  fill(255,0,0);
  text("L or Z?" , 350, 550);


  /*Theses counters are for printing the integers onto the screen to decrease the 
  lives, increase the score of the count for both sources and total score */

  //lives counter
  textSize(32);
  fill(234, 0, 255);
  text("Lives: " + lives, 20, 40);

  //counter for renewable sources
  textSize(18);
  fill(0, 0, 0);
  text("Renewable: " + totalRenew, 950, 650);

  //counter for non-renewable sources
  textSize(18);
  fill(0, 0, 0);
  text("N-Renewable: " + totalNonRenew, 120, 650);

  textSize(32);
  fill(234, 0, 255);
  text("Total Score: " + scoreCount, 20, 80);

  /*i had to choose between having the window automatically
   close or having the text "GAME OVER" when the amount of lives given equated to 0, but i
   chose to have an if statement that exited the window when the number of lives went to 0
   
   I also saved space by using a boolean operator */

  if (lives == 0 || scoreCount >= 11)
  {
    exit();
  }

  //this if statement is for when the score gets to ten or when the semi-circles both equate to 5
  if (totalRenew == 5 && totalNonRenew == 5)
  {
    textSize(40);
    fill(200, 100, 255);
    text("You win!!!", 525, 360);
  }
}

void keyPressed()
{

  /*now, this part functions the sprites to disappear when clicked and increases
   the score counter,the renewbale and non renewable bins, and decreases the number of lives*/
   
   /* certain code that helped me in this section was from this link 
   " https://forum.processing.org/one/topic/how-do-i-hide-a-image-when-it-s-pressed.html " */



  if (key == 'q' || key == 'Q') //right answers are IF statements
  {
    //geothermal - RENEWABLE
    showImg1 = false;
    scoreCount++; //score counter increases
    totalRenew++; //the respective semi-circle increases by 1 to show that your answer is correct
  } 
  else if (key == 'w' || key == 'W') //WRONG answers are ELSE IF statements
  {
    showImg1 = false;
    lives--; //if you choose the wrong keyboard button, one singular life will be deducted from the amount you started with
  }


  if (key == 'e' || key == 'E')
  {
    //bio energy - RENEWABLE
    showImg2 = false;
    totalRenew++;
    scoreCount++;
  } else if (key == 'r' || key == 'R')
  {
    showImg2 = false;
    lives--;
  }


  if (key == 'y' || key == 'Y')
  {
    //nuclear energy - NON RENEWABLE
    showImg3 = false;
    totalNonRenew++;
    scoreCount++;
  } else if (key == 't' || key == 'T')
  {
    showImg3= false;
    lives--;
  }

  if (key == 'u' || key == 'U')
  {
    showImg4 = false; //solar panel - RENEWABLE
    totalRenew++;
    scoreCount++;
  } else if (key == 'i' || key == 'I')
  {
    showImg4 = false;
    lives--;
  }


  if (key == 'p' || key == 'P')
  {
    showImg5 = false; //coal - NON RENEWABLE
    totalNonRenew++;
    scoreCount++;
  } else if (key == 'o' || key == 'O')
  {
    showImg5 = false;
    lives--;
  }



  if (key == 's' || key == 'S')
  {
    showImg6 = false; //oil - NON RENEWABLE
    totalNonRenew++;
    scoreCount++;
  } else if (key == 'a' || key == 'A')
  {
    showImg6 = false;
    lives--;
  }



  if (key == 'f' || key == 'F')
  {
    showImg7 = false; //phosphate - NON RENEWABLE
    totalNonRenew++;
    scoreCount++;
  } else if (key == 'd' || key == 'D')
  {
    showImg7=false;
    lives--;
  }



  if (key == 'g' || key == 'G')
  {
    showImg8 = false; //wind turbines - RENEWABLE
    totalRenew++;
    scoreCount++;
  } else if (key == 'h' || key == 'H')
  {
    showImg8=false;
    lives--;
  }



  if (key == 'j' || key == 'J')
  {
    showImg9 = false; //Hydroelectricity - RENEWABLE
    totalRenew++;
    scoreCount++;
  } else if (key == 'k' || key == 'K')
  {
    showImg9 = false;
    lives--;
  }



  if (key == 'z' || key == 'Z')
  {
    showImg10 = false; //peat - NON RENEWABLE
    totalNonRenew++;
    scoreCount++;
  } else if (key == 'l' || key == 'L')
  {
    showImg10=false;
    lives--;
  }
}
