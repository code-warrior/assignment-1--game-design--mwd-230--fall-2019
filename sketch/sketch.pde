/*
  Design Requirements
    Using Processing, open the sketch folder in this repo. 
        Do all your work in this sketch and do not rename the folder or its containing .pde file.
    
    Create a canvas that is 640 × 400.
    
    Design a creature that resembles a sentient being.
    
    Use one neutral (black, white, gr{e|a}y, brown, beige, bronze, cream) 
        and one non-neutral color in the design of your creature.
    
    Pressing any of the arrow keys moves your creature by a factor of 1. 
        You decide the definition of the factor. (factor=4 pixels; factor=8 pixels; etc.)
    
    Pressing non-arrow keys should be ignored.
    
    Make your creature point in only one direction, regardless of which of the four arrow keys is pressed.
    
    Holding any of the arrow keys should not do anything more than move your creature by a factor of 1.
*/

public int starting_x = 50;
public int starting_y = 50;
public final static int speed = 5;

void setup() {
    size(640, 400);
    background(255);
}

void drawC(int point_x, int point_y){
  background(255);
  point(point_x,point_y);
  stroke(0);
  fill(150);

  smooth();
  
  // Set ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  // Draw nuZoog’s body
  stroke(0);
  fill(222);
  rect(point_x+50,point_y+100,20,100);
  
  // Draw nuZoog’s head
  fill(75);
  ellipse(point_x+50,point_y+35,70,70);
  
  // Draw nuZoog’s eyes
  fill(point_x-30, point_y+25, 200);
  ellipse(point_x+31,point_y+20,16,32);
  ellipse(point_x+60,point_y+20,16,32);
  
  // Draw nuZoog’s arms
  stroke(0);
  line(point_x+40,point_y+100,point_x+30,point_y+130);
  line(point_x+60,point_y+100,point_x+70,point_y+130); 
  
  // Draw nuZoog’s lips
  stroke(0);
  line(point_x+40,point_y+70,point_x+30,point_y+50);
  line(point_x+60,point_y+70,point_x+70,point_y+50); 
  
  // Draw nuZoog’s legs
  stroke(0);
  line(point_x+40,point_y+70,point_x+30,point_y+160);
  line(point_x+60,point_y+70,point_x+70,point_y+160); 
}
void draw(){
  drawC(starting_x, starting_y);
}

void keyReleased() {
  if(key == CODED) {
    //up arrow
      if(keyCode == 38) {
        starting_y -= speed;
      }
      // down arrow
      else if(keyCode == 40 && starting_y < height - (50 + 150)) {
        starting_y += speed;
      }
      //left arrow
      else if(keyCode == 37 && starting_x > 0) {
        starting_x -= speed;
      }
      //right arrow
      else if(keyCode == 39 && starting_x < width - (50 + 50 + 200)) {
        starting_x += speed;
      }
  }
}
