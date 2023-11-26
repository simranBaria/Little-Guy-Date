/*
Little Guy Date - Milestone 1
991737688
November 2023
Go on a date and try to win their heart!
*/

boolean showStartScreen, showDateScreen, showWinScreen, showLoseScreen, playerChosen;
int screen, scroll;
LittleGuy playerOptions[], dateOptions[], date, player;
PFont font;
Button leftArrow, rightArrow, selectPlayer, selectDate, replay;
Question questions[];

void setup() {
  size(800, 600);
  font = createFont("Spectral-Medium", 50);
  
  // Set up screens
  screen = 2;
  playerChosen = false;
  
  // Create character options
  playerOptions = new LittleGuy[3];
  dateOptions = new LittleGuy[3];
  for(int i = 0; i < playerOptions.length; i++) {
    playerOptions[i] = new LittleGuy(i + 1, 400, 300);
    dateOptions[i] = new LittleGuy(i + 4, 400, 300);
  }
  scroll = 0;
  player = new LittleGuy(1, 400, 300);
  date = new LittleGuy(5, 400, 300);
  
  // Create buttons
  leftArrow = new Button(150, 250, 50, 100, color(255));
  rightArrow = new Button(600, 250, 50, 100, color(255));
  selectPlayer = new Button(320, 500, 160, 50, color(104, 31, 77));
  selectDate = new Button(350, 500, 100, 50, color(104, 31, 77));
  replay = new Button(600, 500, 100, 50, color(104, 31, 77));
  
  // Create questions
  createQuestions();
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
    playerOptions[scroll].display();
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
    dateOptions[scroll].display();
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
  questions[1].display();
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

void createQuestions() {
  questions = new Question[7];
  questions[0] = new Question("How do I look?", "Good!", "Meh.");
  
  questions[1] = new Question("What made you want to ask me out?", "You're just my type!", "I was bored.");
  questions[1].goodButton.setX(questions[1].goodButton.x - 75);
  questions[1].goodButton.setW(questions[1].goodButton.w + 150);
  questions[1].badButton.setX(questions[1].badButton.x - 25);
  questions[1].badButton.setW(questions[1].badButton.w + 50);
  
  questions[2] = new Question("What are your hobbies?", "I like cooking.", "Nothing.");
  questions[2].goodButton.setX(questions[2].goodButton.x - 50);
  questions[2].goodButton.setW(questions[2].goodButton.w + 100);
  questions[2].badButton.setX(questions[2].badButton.x - 25);
  questions[2].badButton.setW(questions[2].badButton.w + 50);
  
  questions[3] = new Question("What do you think of video games? I like playing them.", "I like playing them too!", "They're stupid.");
  questions[3].goodButton.setX(questions[3].goodButton.x - 100);
  questions[3].goodButton.setW(questions[3].goodButton.w + 200);
  questions[3].badButton.setX(questions[3].badButton.x - 50);
  questions[3].badButton.setW(questions[3].badButton.w + 100);
  
  questions[4] = new Question("Would you want to play together some time?", "Yeah!", "I'll pass.");
  questions[4].badButton.setX(questions[4].badButton.x - 25);
  questions[4].badButton.setW(questions[4].badButton.w + 50);
  
  questions[5] = new Question("Maybe we could cook something. It could be a second date.", "That sounds fun!", "I'd rather not.");
  questions[5].goodButton.setX(questions[5].goodButton.x - 75);
  questions[5].goodButton.setW(questions[5].goodButton.w + 150);
  questions[5].badButton.setX(questions[5].badButton.x - 50);
  questions[5].badButton.setW(questions[5].badButton.w + 100);
  
  questions[6] = new Question("It's getting a little late now.", "I'll get the check!", "Can you pay?");
  questions[6].goodButton.setX(questions[6].goodButton.x - 75);
  questions[6].goodButton.setW(questions[6].goodButton.w + 150);
  questions[6].badButton.setX(questions[6].badButton.x - 50);
  questions[6].badButton.setW(questions[6].badButton.w + 100);
}

void mouseClicked() {
  switch(screen) {
    // Select screen
    case 1:
    // Left arrow button
    //println(mouseX);
    if(leftArrow.clicked()) {
      //print("clicked");
      scroll--;
      if(scroll == -1) {
        //println("scrolled");
        scroll = 2;
      }
    }
    
    // Right arrow button
    else if(rightArrow.clicked()) {
      scroll++;
      if(scroll == 3) scroll = 0;
    }
    
    // Select player button
    else if(!playerChosen && selectPlayer.clicked()) {
      player = new LittleGuy(scroll + 1, 400, 300);
      scroll = 0;
      playerChosen = true;
    }
    
    // Select date button
    else if(playerChosen && selectDate.clicked()) {
      date = new LittleGuy(scroll + 4, 400, 300);
      screen = 2;
    }
    
    break;
    
    // Date screen
    case 2:
    break;
    
    // Win screen
    case 3:
    break;
    
    // Lose screen
    case 4:
    break;
  }
}
