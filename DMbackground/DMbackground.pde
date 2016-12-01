void setup() {
  size(3840,1080);
  background(50);
  stroke(255);
  strokeWeight(2);
}

void draw() {
  line(mouseX,mouseY,mouseY,mouseX);
}

void mousePressed(){
  saveFrame("output##.png");
  exit();
}