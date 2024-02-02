//Aidan Slovik | monday sep 11 2023 | grades
void setup() {
  size(400, 200);
}

void draw() {
  background(175);

  //title text
  textSize(30);
  textAlign(CENTER);
  fill(0);
  text("Grades App | By Aidan Slovik", width/2, 35);

  //reference line
  strokeWeight(2);
  line(0, height/2, width, height/2);

  //Tic Marks
  for (int i =0; i<width; i+=50) {
    line(i, height/2+5, i, height/2-5);
    
  }

  //Display Dynamic Grade Calculation using MouseX
  ellipse(mouseX, height/2, 5, 5);
  textSize(14);
  text(mouseX*0.01, mouseX, height/2-10);

  //assignGrade();
  assignGrade(mouseX*0.01);
}

void assignGrade(float grade) {
  if  (grade >= 3.51) {
    text("You get an A", width/2, height/2+25);
  } else if (grade >= 3) {
    text("You get an A-", width/2, height/2+25);
  } else if (grade >= 2.84) {
    text("You get an B+", width/2, height/2+25);
  } else if (grade >= 2.67) {
    text("You get an B", width/2, height/2+25);
  } else if (grade >= 2.5) {
    text("You get an B-", width/2, height/2+25);
  } else if (grade >= 2.34 ) {
    text("You get an C+", width/2, height/2+25);
  } else if (grade >= 2.17) {
    text("You get an C", width/2, height/2+25);
  } else if (grade >= 2.00 ) {
    text("You get an C-", width/2, height/2+25);
  } else if (grade >= 1.66) {
    text("You get an D+", width/2, height/2+25);
  } else if (grade >= 1.33) {
    text("You get an D", width/2, height/2+25);
  } else if (grade >= 1) {
    text("You get an D-", width/2, height/2+25);
  } else {
    text("You get an F", width/2, height/2+25);
  }
}
