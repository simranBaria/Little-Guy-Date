/*
Little Guy Date - Milestone 1
991737688
November 2023
Go on a date and try to win their heart!
*/

boolean showStartScreen, showDateScreen, showWinScreen, showLoseScreen, playerChosen;
int screen;
LittleGuy date, player;
PFont font;
Button leftArrow, rightArrow, selectPlayer, selectDate, replay;
Question question;

void setup() {
  size(800, 600);
  font = createFont("Spectral-Medium", 50);
  screen = 1;
  playerChosen = true;
  date = new LittleGuy(6, 400, 300);
  player = new LittleGuy(1, 400, 300);
  leftArrow = new Button(150, 250, 50, 100, color(255));
  rightArrow = new Button(600, 250, 50, 100, color(255));
  selectPlayer = new Button(320, 500, 160, 50, color(104, 31, 77));
  selectDate = new Button(350, 500, 100, 50, color(104, 31, 77));
  question = new Question("How do I look?", "Good!", "Meh.");
  replay = new Button(600, 500, 100, 50, color(104, 31, 77));
}

void draw() {
  switch(screen) {
    case 1:
    startScreen();
    break;
    
    case 2:
    dateScreen();
    break;
    
    case 3:
    winScreen();
    break;
    
    case 4:
    loseScreen();
    break;
  }
}

void startScreen() {
  // Background
  background(255, 212, 244);
  
  // Buttons
  leftArrow.display();
  rightArrow.display();
  fill(104, 31, 77);
  triangle(160, 300, 190, 270, 190, 330);
  triangle(640, 300, 610, 270, 610, 330);
  
  if(!playerChosen) {
    selectPlayer.display();
    // Player selects an avatar
    fill(255);
    textFont(font);
    textAlign(CENTER);
    text("Pick your character!", width / 2, 100);
    textSize(25);
    text("That's me!", 400, 530);
    
    // Show options
    player.display();
  }
  else {
    // Player selects a date
    selectDate.display();
    fill(255);
    textFont(font);
    textAlign(CENTER);
    text("Pick your date!", width / 2, 100);
    textSize(25);
    text("Date!", 400, 530);
    
    // Show options
    date.display();
  }
}

void dateScreen() {
  // Background
  background(104, 31, 77);
  player.setPosition(200, 480);
  date.setPosition(600, 480);
  player.display();
  date.display();
  
  // Table
  fill(126, 86, 39);
  rect(270, 530, 20, 70);
  rect(500, 530, 20, 70);
  fill(90, 60, 24);
  rect(330, 540, 20, 60);
  rect(450, 540, 20, 60);
  fill(153, 107, 52);
  ellipse(400, 550, 300, 100);
  
  // Candle
  fill(222, 124, 57);
  ellipse(400, 550, 40, 20);
  rect(395, 520, 10, 30);
  arc(400, 510, 60, 20, 0, PI);
  fill(232, 162, 120);
  rect(390, 480, 20, 30);
  fill(241, 172, 63);
  ellipse(400, 470, 20, 20);
  triangle(400, 450, 410, 470, 390, 470);
  
  // Questions
  question.display();
}

void winScreen() {
  // Background
  background(255, 212, 244);
  
  // Characters
  player.setPosition(200, 480);
  date.setPosition(320, 480);
  player.display();
  date.display();
  
  // Bouquet
  fill(35, 119, 34);
  triangle(80, 510, 90, 490, 100, 500);
  triangle(100, 420, 100, 440, 110, 440);
  triangle(160, 430, 150, 450, 150, 440);
  fill(221, 72, 74);
  ellipse(100, 490, 20, 20);
  fill(181, 35, 45);
  ellipse(100, 450, 20, 20);
  fill(196, 81, 135);
  ellipse(100, 470, 40, 40);
  ellipse(110, 440, 20, 20);
  fill(136, 21, 57);
  ellipse(120, 480, 40, 40);
  ellipse(130, 440, 40, 40);
  fill(221, 72, 74);
  ellipse(140, 450, 20, 20);
  fill(181, 35, 45);
  ellipse(120, 460, 40, 40);
  fill(155, 213, 224);
  quad(100, 500, 150, 450, 180, 510, 160, 530);
  quad(180, 510, 160, 530, 160, 540, 190, 510);
  
  // Button
  replay.display();
  
  // Text
  fill(255);
  textFont(font);
  textAlign(CENTER);
  text("Success!", 260, 200);
  textSize(25);
  text("Replay", 650, 530);
}

void loseScreen() {
  // Background
  background(31, 34, 104);
  
  // Character
  player.setPosition(200, 480);
  player.display();
  
  // Phone
  fill(63, 73, 92);
  quad(210, 450, 260, 450, 240, 500, 190, 500);
  
  // Text bubble
  fill(255);
  rect(350, 250, 200, 150);
  triangle(350, 370, 380, 400, 320, 430);
  fill(172, 177, 183);
  rect(360, 300, 180, 20);
  fill(25, 36, 174);
  textAlign(LEFT);
  text("Google", 370, 290);
  fill(0);
  textSize(15);
  text("How to date", 370, 315);
  text("Search", 370, 335);
  stroke(0);
  noFill();
  ellipse(425, 328, 5, 5);
  line(417, 335, 423, 330);
  
  // Button
  replay.display();
  
  // Text
  fill(255);
  textFont(font);
  textAlign(CENTER);
  text("Better luck next time!", 260, 200);
  textSize(25);
  text("Replay", 650, 530);
}
