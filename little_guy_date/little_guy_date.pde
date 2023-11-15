/*
Little Guy Dates
991737688
November 2023
Go on a date and try to win their heart!
*/

boolean showStartScreen, showDateScreen, showWinScreen, showLoseScreen;

void setup() {
  size(800, 600);
  showStartScreen = true;
  showDateScreen = false;
  showWinScreen = false;
  showLoseScreen = false;
}

void draw() {
  if(showStartScreen) startScreen();
  else if(showDateScreen) dateScreen();
  else if(showWinScreen) winScreen();
  else if(showLoseScreen) loseScreen();
}

void startScreen() {
  background(255, 212, 244);
}

void dateScreen() {
  background(104, 31, 77);
}

void winScreen() {
  background(255, 212, 244);
}

void loseScreen() {
  background(31, 34, 104);
}
