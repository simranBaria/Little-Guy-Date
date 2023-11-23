/*
Little Guy Date - Milestone 1
991737688
November 2023
Go on a date and try to win their heart!
*/

boolean showStartScreen, showDateScreen, showWinScreen, showLoseScreen;
LittleGuy date, player;
PFont font;
Button leftArrow, rightArrow, select;

void setup() {
  size(800, 600);
  font = createFont("Spectral-Medium", 50);
  showStartScreen = true;
  showDateScreen = false;
  showWinScreen = false;
  showLoseScreen = false;
  date = new LittleGuy(4, 400, 300);
  player = new LittleGuy(1, 400, 300);
  leftArrow = new Button(150, 250, 50, 100, color(255));
  rightArrow = new Button(600, 250, 50, 100, color(255));
  select = new Button(350, 500, 100, 50, color(104, 31, 77));
}

void draw() {
  if(showStartScreen) startScreen();
  else if(showDateScreen) dateScreen();
  else if(showWinScreen) winScreen();
  else if(showLoseScreen) loseScreen();
}

void startScreen() {
  // Background
  background(255, 212, 244);
  fill(255);
  textFont(font);
  textAlign(CENTER);
  text("Pick your date!", width / 2, 100);
  
  // Show options
  date.display();
  
  // Buttons
  leftArrow.display();
  rightArrow.display();
  
  fill(104, 31, 77);
  triangle(160, 300, 190, 270, 190, 330);
  triangle(640, 300, 610, 270, 610, 330);
  
  select.display();
  fill(255);
  textSize(25);
  text("Date!", 400, 530);
}

void dateScreen() {
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
}

void winScreen() {
  background(255, 212, 244);
  player.setPosition(200, 480);
  date.setPosition(320, 480);
  player.display();
  date.display();
  fill(255);
  textSize(50);
  text("Success!", 200, 100);
  fill(104, 31, 77);
  rect(600, 500, 100, 50);
  
  // Bouquet
  fill(181, 35, 45);
  ellipse(100, 490, 20, 20);
  ellipse(100, 470, 40, 40);
  ellipse(100, 450, 20, 20);
  ellipse(120, 480, 40, 40);
  ellipse(110, 440, 20, 20);
  ellipse(130, 440, 40, 40);
  ellipse(140, 450, 20, 20);
  ellipse(120, 460, 40, 40);
  fill(155, 213, 224);
  quad(100, 500, 150, 450, 180, 510, 160, 530);
  quad(180, 510, 160, 530, 160, 540, 190, 510);
}

void loseScreen() {
  background(31, 34, 104);
  player.setPosition(200, 480);
  player.display();
  fill(255);
  textSize(50);
  text("Better luck next time!", 200, 100);
  fill(104, 31, 77);
  rect(600, 500, 100, 50);
}
