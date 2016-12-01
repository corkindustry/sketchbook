void setup() {
  size(1024,768);
  stroke(255);
  strokeWeight(10);
  
}

void draw() {
  background(128);
  point(mouseX+10,mouseY+10);
  point(mouseX-10,mouseY+10);
  point(mouseX+10,mouseY-10);
  point(mouseX-10,mouseY-10);
  
}