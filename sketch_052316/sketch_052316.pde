float[] angle1;
float[] angle2;
float[] dotsW;
int h;
int w;


void setup () {
 size(640,640,P3D);
 strokeWeight(10);
 frameRate(30);
 blendMode(ADD);
 h = height;
 w = width;
 
 dotsW = new float[w];
 angle1 = new float[w];
 angle2 = new float[w];
 for (int i = 0; i < w; i++) {
  dotsW[i] = i * 10;
  angle1[i] = i * 2;
  angle2[i] = angle1[i];
 }
 
}

void draw () {
  background(50);
  
  for (int i = 0; i < w; i++) {
    float y1 = (sin(angle1[i]) * h/3) + h/2;
    float y2 = (sin(angle2[i]) * h/4) + h/2;
    stroke(255,0,0);
    line(dotsW[i],y1,20+dotsW[i],20+y2);
    //point(dotsW[i]*2,y1);
    //point(dotsW[i]*2,y2);
    stroke(0,255,0);
    line(dotsW[i],y1,dotsW[i],y2);
    //point(dotsW[i],y1);
    //point(dotsW[i],y2);
    angle1[i] += 0.05;
    angle2[i] += 0.07;
  }
  
  //saveFrame("sl/####.tif");
  
}