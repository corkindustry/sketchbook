float[] angle1;
float[] angle2;
float[] dotsH;
float[] dotsW;
int h;
int w;


void setup () {
 size(800,450);
 strokeWeight(10);
 //frameRate(30);
 h = height;
 w = width;
 
 dotsH = new float[h];
 dotsW = new float[w];
 angle1 = new float[h];
 angle2 = new float[w];
 for (int i = 0; i < h; i++) {
  dotsH[i] = i*10;
  angle1[i] = i * 0.12;
 }
 for (int i = 0; i < w; i++) {
   dotsW[i] = i*10;
   angle2[i] = i * 0.12;
 }
 
}

void draw () {
  background(0,100,0);
  
  for (int i = 0; i < h; i++) {
    float y1 = (cos(angle1[i]) * h/2) + h/2;
    stroke(255);
    strokeWeight(y1 / 20);
    point(dotsH[i],y1);
    angle1[i] += 0.01;
  }
  
  for (int i = 0;i < w; i++) {
    float y2 = (sin(angle2[i]) * w/2) + w/2;
    stroke(255);
    strokeWeight(y2 / 20);
    point(y2,dotsW[i]);
    angle2[i] += 0.012;
  
  }
  
}