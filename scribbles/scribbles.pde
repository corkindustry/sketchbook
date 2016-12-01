void setup() {
 size (600,600);
 noFill();
}

int[] lines0 = new int[width];
int[] lines1 = new int[width];
int[] lines2 = new int[width];
int[] lines3 = new int[width];

void draw() {
 background(200);
 for (int i=0;i<100;i++) {
   lines0[i] = int(random(width)); 
   lines1[i] = int(random(width));
   lines2[i] = int(random(width));
   lines3[i] = int(random(width));
 } 
  for (int i=0;i<100;i++) {
   stroke(random(255),random(255),random(255),random(255));
   strokeWeight(random(10));
   ellipse(lines0[i],lines1[i],lines2[i],lines3[i]);
   line(lines0[i],lines1[i],lines2[i],lines3[i]);
 }
 //delay(60);
}

void mousePressed() {
  
}