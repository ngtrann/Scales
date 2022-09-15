void setup() {
  size(500, 500);  //feel free to change the size
  //noLoop(); //stops the draw() function from repeating
  frameRate(2);
}

void draw() {
  boolean shift = true;
  for (int y =5; y<=800; y+=50)
  {
    for (int x =0; x<=700; x+=50)
    {
      if (shift==true)
        scale(x+25, y);
      else
        scale(x, y);
    }
    if (shift==true)
      shift=false;
    else
      shift=true;
  }
}

void scale(int x, int y) {
  noStroke();
  fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  ellipse(x, y, 50, 65);
  triangle(x-26, y+20, x+26, y+20, x, y+75);
  fill(255, 255, 255, 80);
  ellipse(x, y, 30, 35);
}

