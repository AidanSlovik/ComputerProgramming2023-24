// Aidan Slovik | wed sep 6 2023 | Historic Computer Systems
PFont font1;
PFont font2;

void setup() {
  size(900, 400);
  background(100);
  font1 = loadFont("Helvetica-48.vlw");
  font2 = loadFont("ComicSansMS-48.vlw");
}

void draw() {
  background(100);
  //draw the title info
  textFont(font1, 15);
  textSize(50);
  textAlign(CENTER);
  fill(255);
  text("Historic Computer Systems", width/2, 60);
  textSize(30);
  text(" By Aidan Slovik", width/2, 100);

  //draw the timeline
  strokeWeight(3);
  line(100, 225, 800, 225);
  line(100, 220, 100, 230);
  line(800, 220, 800, 230);
  line(275, 220, 275, 230);
  line(450, 220, 450, 230);
  line(625, 220, 625, 230);

  textSize(20);
  text("1940", 100, 210);
  text("1980", 800, 210);

  //draw hist events
  textFont(font2, 20);
  histEvent(180, 170, "ENIAC", "1945 | John Mauchly and J. Presper Eckert | Turing complete machine", true);
  histEvent(225, 300, "EDSAC", "1949 | Maurice Wilkes | complex mathematical functions", false);
  histEvent(320, 170, "LEO 1", "1951 | Developer | Purpose", true);
  histEvent(390, 300, "Transistors", "1955 | Developer | Purpose", false);
  histEvent(460, 170, "Atlas", "1962 | Developer | Purpose", true);
  histEvent(530, 300, "IC", "1960's | Developer | Purpose", false);
  histEvent(600, 170, "Intel 4004", "1971 | Developer | Purpose", true);
  histEvent(670, 300, "floppy disks", "1975 | Developer | Purpose", false);
}





void histEvent(int x, int y, String title, String detail, boolean top) {
  text(title, x, y);
  if (top == true) {
    line(x, y+5, x+45, y+55);
  } else {
    line(x, y-20, x+45, y-75);
  }
  // mouse over effect to reveal detail text
  if (mouseX > x-30 && mouseX < x+30 && mouseY > y-15 && mouseY < y+5) {
    if (top) {
      text(detail, width/2, 150);
    } else {
      text(detail, width/2, 320);
    }
  }
}
