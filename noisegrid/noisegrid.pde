float[] x1;
float[] x2;
float[] y1;
float[] y2;

void setup() {
 size(640,640); 
 strokeWeight(2);
 
  x1 = new float[width];
  x2 = new float[width];
  y1 = new float[height];
  y2 = new float[height];
 
 for(int i = 0; i < width; i++) {
 x1[i] = i * 100;
 }
 
 for(int i = 0; i < height; i++) {
 y1[i] = i * 100;
 }
}

void draw() {
  background(150);
  for(int xx = 0; xx < width; xx++) {
    //x1[xx] = noise(x1[xx]);
    for(int yy = 0; yy < height; yy++) {
      //y1[yy] = noise(y1[yy]);
      point(x1[xx],y1[yy]);    
    }
  }

}