int x = 100;
int y = 100;
 
void setup(){
  background(80);
  size (640, 400);  
}
 
void draw(){
  background(80);
  
  fill(50);
  triangle(x-20, y+10, x-10, y-80, x+10, y-25); //left ear
  triangle(x+30, y-25, x+50, y-80, x+60, y+10); //right ear
  
  fill(220);
  ellipse(x+100, y+60, 180, 80); //body
  circle(x+20, y+10, 80); //head
  
  fill(220,100,120);
  circle(x+35, y, 15); // right eye
  circle(x+5, y, 15); // left eye
  
  fill(220,100,190);
  circle(x+20, y+15, 10); // nose
  line(x+20, y+20, x+20, y+30); // nose line
  line(x+20, y+30, x+35, y+20); // nose line right side
  line(x+10, y+35, x+20, y+30); // nose line left side
  
  
  line(x+50, y+95, x+50, y+130); // leg 1
  line(x+80, y+100, x+80, y+130); // leg 2
  line(x+120, y+100, x+120, y+130); // leg 3
  line(x+150, y+95, x+150, y+130); // leg 4
  line(x+190, y+50, x+210, y+10); // tail
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      y -= 1;
    } else if (keyCode == DOWN) {
      y += 1;
    } else if (keyCode == LEFT) {
      x -= 1;
    } else if (keyCode == RIGHT) {
      x += 1;
    }  
  } 
}
