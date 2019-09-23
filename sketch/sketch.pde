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
public final static int HEAD_WIDTH_HEIGHT = 75;
public final static int BODY_WIDTH = 250;
public final static int BODY_HEIGHT = 150;
public final static int MOVEMENT_SPEED = 10;
public final static int TRUE_GRAY = (255/2);
public final static int WHITE = 255;

void setup() {
    size(640, 400);
    background(0);
}

void drawCreature(int point_x, int point_y) {
    background(0);
    point(point_x, point_y);

    //Body
    fill(TRUE_GRAY);
    rect(point_x, point_y, BODY_WIDTH, BODY_HEIGHT);
    
    //Head
    fill(TRUE_GRAY);
    rect(point_x+200+HEAD_WIDTH_HEIGHT/2, point_y + BODY_WIDTH/3 - HEAD_WIDTH_HEIGHT/2, HEAD_WIDTH_HEIGHT, HEAD_WIDTH_HEIGHT);
    
    //Tusks
    fill(WHITE);
    triangle(
        point_x+200+HEAD_WIDTH_HEIGHT, point_y + BODY_WIDTH/3 - HEAD_WIDTH_HEIGHT/2 + HEAD_WIDTH_HEIGHT-20, 
        point_x+200+HEAD_WIDTH_HEIGHT, point_y + BODY_WIDTH/3 - HEAD_WIDTH_HEIGHT/2 + HEAD_WIDTH_HEIGHT, 
        point_x+200+HEAD_WIDTH_HEIGHT+100, point_y + BODY_WIDTH/3 - HEAD_WIDTH_HEIGHT/2 + HEAD_WIDTH_HEIGHT+20);
    triangle(
        point_x+200+HEAD_WIDTH_HEIGHT, point_y + BODY_WIDTH/3 - HEAD_WIDTH_HEIGHT/2 + HEAD_WIDTH_HEIGHT-20, 
        point_x+200+HEAD_WIDTH_HEIGHT, point_y + BODY_WIDTH/3 - HEAD_WIDTH_HEIGHT/2 + HEAD_WIDTH_HEIGHT, 
        point_x+200+HEAD_WIDTH_HEIGHT+100, point_y + BODY_WIDTH/3 - HEAD_WIDTH_HEIGHT/2 + HEAD_WIDTH_HEIGHT-20);

    //Eye
    //light blue
    fill(52, 204, 255);
    ellipse(point_x+200+HEAD_WIDTH_HEIGHT/2 + (HEAD_WIDTH_HEIGHT/1.75), point_y + BODY_WIDTH/3 - HEAD_WIDTH_HEIGHT/2 + (HEAD_WIDTH_HEIGHT/1.75), 10, 10);

    //Legs
    fill(TRUE_GRAY);
    rect(point_x + (BODY_WIDTH/4)-10, point_y + BODY_HEIGHT, 10, 50);
    rect(point_x + (BODY_WIDTH/4)*3-10, point_y + BODY_HEIGHT, 10, 50);
}

void draw() {
    drawCreature(starting_x, starting_y);
}

void keyReleased() {
  if(key == CODED) {
      if(keyCode == 38 && starting_y > 0) {
        starting_y -= MOVEMENT_SPEED;
      }
      else if(keyCode == 40 && starting_y < 400 - (50 + BODY_HEIGHT)) {
        starting_y += MOVEMENT_SPEED;
      }
      else if(keyCode == 37 && starting_x > 0) {
        starting_x -= MOVEMENT_SPEED;
      }
      else if(keyCode == 39 && starting_x < 640 - (50 + BODY_WIDTH + HEAD_WIDTH_HEIGHT)) {
        starting_x += MOVEMENT_SPEED;
      }
      //Debugging
      else {
          //System.out.println("No way jose " + key + " " + keyCode + " " + starting_x + " " + starting_y);
          //left up right down
          // 37  38 39    40
      }
    }
  }