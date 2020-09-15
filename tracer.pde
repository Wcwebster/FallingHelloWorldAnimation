int zoom;
PImage text;
ArrayList<Integer> cPixels;
int range = 10;
void setup(){
  size(800,800);
  background(100);
  frameRate(60);
  zoom = 1;
  //text = loadImage("face2.png");
  text = loadImage("HelloWorld.jpg");
  image(text,0,0);
  textSize(100);
  //fill();
  
  cPixels = new ArrayList<Integer>();
  setUpArray(); 
  
}

void setUpArray(){
  int row;
  int column;
  color c;
  for (int i = 0; i < width*height; i++){
    row = i%width;
    column = i/height;
    c = get(row,column);
    if (red(c) == 0 && blue(c) == 0 && green(c) == 0){
      cPixels.add(i);
    }
  }
}

void draw(){
  
  //zoom -= 1;
  image(text,0,0);
  
  //fill(0);
  //text("YOO", 50,100);
  //fill(255);
  
  if (mousePressed)
    rect(random(mouseX-10,mouseX+10),random(mouseY-10,mouseY+10),random(10),random(10));
  //scale(zoom);
  
  //if (frameCount%2==0 && range < 600)
  //  range*=1.2;
  if (frameCount%2==0)
    range*=2;
  
  int row;
  int column;
  //float ran;
  for (int i: cPixels){
    row = i%width;
    column = i/height;
    //fill(random(255),random(255),random(255));
    //rect(random(row-5,row+5),random(column-5,column+5),random(10),random(10));
    rect(random(row-5,row+5),random(column,column+range),random(10),random(10));
  }
}

private class recta{
  
}
